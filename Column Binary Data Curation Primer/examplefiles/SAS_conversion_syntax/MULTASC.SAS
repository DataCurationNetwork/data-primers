*TITLE 'MULTASC.SAS';

/**********************************************************************/
/* MULTASC.SAS is used to generate xrays of multple cards ASCII data  */
/* files. Xrays are reports of frequency counts for each data column. */     
/* This program is called from RUNXRAY.SAS                            */
/* Created: 8/12/2003. By Demi Li                                     */
/* Added WORK.XRAYSET keep info and output statement to be used to    */
/* generate SPSS data definition list file. 10/20/2006                */
/* Modified: 10/16/2006.  By Marc Maynard							  */
/* Last modified: 09/02/2022. By Jessica Ko							  */
/**********************************************************************/;
proc template;
     define style styles.test;
       parent=styles.rtf;
           replace fonts /
           'TitleFont2' = ("Courier New, Courier",7.2pt)
           'TitleFont' = ("Courier New, Courier",7.2pt)
           'StrongFont' = ("Courier New, Courier",7.2pt)
           'EmphasisFont' = ("Courier New, Courier",7.2pt)
           'FixedEmphasisFont' = ("Courier New, Courier",9pt,Italic)
           'FixedStrongFont' = ("Courier New, Courier",9pt,Bold)
           'FixedHeadingFont' = ("Courier New, Courier",9pt,Bold)
           'BatchFixedFont' = ("Courier New, Courier",7.2pt)
           'FixedFont' = ("Courier New, Courier",9pt)
           'headingEmphasisFont' = ("Courier New, Courier",7.2pt)
           'headingFont' = ("Courier New, Courier",7.2pt)
           'docFont' = ("Courier New, Courier",7.2pt);
		   replace color_list /
			'link' = white /* links */
			'bgH' = white /* row and column header background */
			'fg' = black /* text color */
			'bg' = white; /* page background color */;
		   replace Table from Output /
			frame = void /* outside borders: void, box, above/below, vsides/hsides, lhs/rhs */
			rules = all /* internal borders: none, all, cols, rows, groups */
			cellpadding = 3pt /* the space between table cell contents and the cell border */
			cellspacing = 0pt /* the space between table cells, allows background to show */
			borderwidth = 1pt /* the width of the borders and rules */;

     end;
   run;


ODS RTF FILE = XRAY style=styles.test;
OPTIONS NOCENTER NODATE NONUMBER;
DATA SCRATCH(KEEP=FORM CARD RECORD)
     BITS(KEEP=VCOL DCOL INLRECL STUDYN MINRECL MAXRECL PAGESZ);
 LENGTH DEFAULT=4   FORM CARD $1. RECORD $10000. ;
 RETAIN           VCOL DCOL INLRECL STUDYN MINRECL MAXRECL PAGESZ 0;
 *MAXRECL = 0; MINRECL = 1000000;
 /* INPUT THE PATH AND NAME OF ASCII (MULTIPLE RECORD) FILE   */
 INFILE DATAIN N=1 LENGTH=INLEN truncover end=allgone;

 /* INPUT FORM COLUMN# AND CARD COLUMN#  */ 
   VCOL=&VERCOL;        DCOL=&DECKCOL ;   
   
  INPUT @;  INLRECL=INLEN;
   IF INLRECL>10000 THEN DO;  FILE LOG;
     PUT '*** INPUT LRECL OF ' INLRECL ' TRUNCATED TO 10000.';
     INLRECL=10000;
    END;
  IF ^(0 <= VCOL <=INLRECL) | ^(0 <= DCOL <= INLRECL) THEN DO;  FILE LOG;
    PUT '*** INVALID COLUMN LOCATION(S) : ' VCOL= DCOL= ;
    STOP;
   END;
  IF VCOL=0 & DCOL=0 THEN DO;                                  *FILE LOG;
    PUT '*** MULTEBCD SHOULD NOT BE USED FOR A ONE-CARD DATASET';
    STOP;
   END;
  IF INLRECL > MAXRECL THEN DO;
     MAXRECL = INLRECL;
   end;
  IF INLRECL < MINRECL THEN DO;
     MINRECL = INLRECL;
   end;
   if allgone then do;
     STUDYN = _N_;
     FILE LOG;
     PUT '*** VCOL= ' VCOL ' / DCOL = ' DCOL ' / MAXRECL= ' MAXRECL ;
     OUTPUT BITS;
   end;


 INPUT  @1 RECORD $VARYING10000. INLRECL ;
 IF VCOL>0 THEN FORM=SUBSTR(RECORD,VCOL,1); ELSE FORM='1';
 IF DCOL>0 THEN CARD   =SUBSTR(RECORD,DCOL,1); ELSE CARD   ='1';
 *    USERDROP ; * ;
 OUTPUT SCRATCH;
 RETURN;
RUN;

DATA _NULL_;
IDSTRING =symget('ARCHNO');
XRAYTYPE =symget('XRAYTYPE');
OPNAME =symget('OPNAME');
FDIR = symget('dir') ;
FTYPE = symget('ftype');
SET BITS;
FILE  PRINT;
*put 'clear';
PUT ///;
PUT 'ROPER CENTER XRAY '//;
PUT 'STUDY:                   ' IDSTRING   ;
dsfn=PATHNAME("DATAIN");
put 'Dataset:                 ' dsfn;
PUT 'Generated:               ' "%sysfunc (today(), mmddyys10.)" ; 
PUT 'Operator:                ' OPNAME ;
PUT //;
PUT 'Operator provided the following information -- ';
xrfn=PATHNAME("XRAY");
put 'XRay File:               ' xrfn;
PUT 'Requested Xray Type:     ' XRAYTYPE ;
PUT 'Form Column:             ' VCOL ; 
PUT 'Card Column:             ' DCOL ;
PUT //;
PUT 'Reported from the data file -- ';
PUT 'Record Length: ' MAXRECL'(max)   ' MINRECL'(min) ';
PUT 'Total Records: ' STUDYN  ;
PUT ////;
RUN;

*PROC PRINTTO PRINT=XRAY;
*RUN;

OPTIONS NOCENTER;
PROC FREQ DATA=SCRATCH;
 TABLE CARD / NOCOL NOROW NOPERCENT LIST ;
 TABLE FORM / NOCOL NOROW NOPERCENT LIST;
RUN;

OPTIONS CENTER;
title1 ' FORM by CARD TABLE                                         Source:  The Roper Center, ' "%sysfunc(today(), mmddyys10.)" ; 
PROC FREQ DATA=SCRATCH;
 TABLE FORM*CARD / NOROW NOCOL NOPERCENT ;
RUN;

PROC SORT DATA=SCRATCH;    BY FORM   CARD;
RUN;

DATA WORK.XRAYSET (keep = column COLOTHR NONBLNK idstring form card ncards  );
IDSTRING =symget('ARCHNO');
XRAYTYPE =symget('XRAYTYPE');
OPNAME =symget('OPNAME');
FDIR = symget('dir') ;
FTYPE = symget('ftype');
 title1;
 FILE  PRINT NOTITLES PS=86  LS=132 HEADER=PAGETOP;
 LENGTH DEFAULT=4             RECORD $10000. ONECOL $1.;

 ARRAY  COLPUN0 (COLUMN)  C0_1 - C0_10000;
 ARRAY  COLPUN1 (COLUMN)  C1_1 - C1_10000;
 ARRAY  COLPUN2 (COLUMN)  C2_1 - C2_10000;
 ARRAY  COLPUN3 (COLUMN)  C3_1 - C3_10000;
 ARRAY  COLPUN4 (COLUMN)  C4_1 - C4_10000;
 ARRAY  COLPUN5 (COLUMN)  C5_1 - C5_10000;
 ARRAY  COLPUN6 (COLUMN)  C6_1 - C6_10000;
 ARRAY  COLPUN7 (COLUMN)  C7_1 - C7_10000;
 ARRAY  COLPUN8 (COLUMN)  C8_1 - C8_10000;
 ARRAY  COLPUN9 (COLUMN)  C9_1 - C9_10000;
 ARRAY  COLAMPS (COLUMN)  CA_1 - CA_10000;
 ARRAY  COLDASH (COLUMN)  CD_1 - CD_10000;
 ARRAY  COLBLNK (COLUMN)  CB_1 - CB_10000;   LENGTH PUNCHES $14.;
 RETAIN NCARDS   NUMCOLS  C0_1-- CB_10000  0        PUNCHES     ;
 ARRAY ERAY (EPOS)    C0_1-- CB_10000 ;    
 SET SCRATCH END=ALLGONE;
 BY FORM          CARD;
     LASTV=  LAST.FORM;
     LASTD=  LAST.CARD;
    FIRSTD=  FIRST.CARD;
 IF _N_=1 THEN DO;
  PUNCHES='01234567890-& ';
  SET BITS; FILE LOG ; PUT 'INLRECL= ' MAXRECL;
  PUNCH=MAXRECL+12; 
  IF PUNCH>122 THEN PUNCH=122; 
 END;
  IF FIRSTD THEN DO;
   NCARDS=0;              
   DO OVER ERAY; ERAY =0;END;
  END;
 NCARDS+1;
 DO COLUMN=1 TO MAXRECL;
 ONECOL=SUBSTR(RECORD,COLUMN,1);
    PUNCH=INDEX(PUNCHES,ONECOL) -1;
         IF PUNCH<0  THEN GOTO NXTCOL;
         IF PUNCH=13 THEN COLBLNK+1;
    ELSE IF PUNCH=0  THEN COLPUN0+1;
    ELSE IF PUNCH=1  THEN COLPUN1+1;
    ELSE IF PUNCH=2  THEN COLPUN2+1;
    ELSE IF PUNCH=3  THEN COLPUN3+1;
    ELSE IF PUNCH=4  THEN COLPUN4+1;
    ELSE IF PUNCH=5  THEN COLPUN5+1;
    ELSE IF PUNCH=6  THEN COLPUN6+1;
    ELSE IF PUNCH=7  THEN COLPUN7+1;
    ELSE IF PUNCH=8  THEN COLPUN8+1;
    ELSE IF PUNCH=9  THEN COLPUN9+1;
    ELSE IF PUNCH=11 THEN COLDASH+1;
    ELSE IF PUNCH=12 THEN COLAMPS+1;
   NXTCOL:  END;

 IF ALLGONE | LASTD THEN DO; * FINAL REPORT AFTER DATA HAS BEEN READ;
 IDSTRING=symget('ARCHNO');
 XRAYTYPE =symget('XRAYTYPE');
 
 FILE  PRINT NOTITLES  PS=86 LS=132 HEADER=PAGETOP; PUT _PAGE_;
   DO COLUMN=1 TO MAXRECL; 
   If COLBLNK>NCARDS THEN DO;  COLBLNK=COLBLNK-NCARDS; END;
   NONBLNK=NCARDS-COLBLNK;
     COLOTHR=NONBLNK-SUM(OF
          COLAMPS COLDASH COLPUN0 COLPUN1 COLPUN2 COLPUN3
          COLPUN4 COLPUN5 COLPUN6 COLPUN7 COLPUN8 COLPUN9);
     PUT  COLUMN 4.
         (COLAMPS COLDASH COLPUN0 COLPUN1 COLPUN2 COLPUN3
          COLPUN4 COLPUN5 COLPUN6 COLPUN7 COLPUN8 COLPUN9
          COLBLNK COLOTHR NONBLNK) (7.) COLUMN 5. ;
	 OUTPUT ;
    END;

 END;
RETURN;

* END MAIN PROGRAM;
* TOP OF PAGE ROUTINE ;
PAGETOP:                                                                                  
  PUT #1 ' Column Frequencies for ' IDSTRING '         TYPE=' XRAYTYPE '                 FORM ' FORM '  CARD ' CARD '(COL=' DCOL')' ;   
  PUT    ' Source:  The Roper Center, ' "%sysfunc(today(), mmddyys10.)" '                                                      Records = ' NCARDS /; 
    PUT '  COL     &      -      0      1      2      3 '
     '    4      5      6      7      8      9    BLANK'
     '   OTHER NONBLNK COL ' / ;
    PUT OVERPRINT
        '  ____ ______ ______ ______ ______ ______ ______'
     ' ______ ______ ______ ______ ______ ______ ______'
     ' ______ _______ ____' ;
RETURN;


RUN;

*PROC PRINTTO;
*RUN;

ODS RTF CLOSE;
