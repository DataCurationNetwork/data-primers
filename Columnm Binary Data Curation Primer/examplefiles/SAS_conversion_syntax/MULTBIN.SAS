*TITLE 'MULTBIN.SAS';

/**********************************************************************/
/* MULTBIN.SAS is used to generate xrays of multple cards IBM column  */
/* binary data files. Xrays are reports of frequency counts for each  */     
/* data column.                                                       */
/* Created: 8/12/2003. By Demi Li                                     */
/* Added WORK.XRAYSET keep info and output statement to be used to    */
/* generate SPSS data definition list file. 10/20/2006                */
/* Modified: 10/20/2006. By Marc Maynard                         	  */
/* Last modified: 9/02/2022. By Jessica Ko                            */
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
DATA WORK.SCRATCH(KEEP=FORM CARD RECORD )
     WORK.BITS(KEEP=VCOL DCOL STUDYN MINRECL MAXRECL);
  LENGTH DEFAULT=4 ;
  RETAIN           VCOL DCOL STUDYN MINRECL MAXRECL 0;
  ARRAY  PUNS (P)  P12 P11 P0 P1-P9;
 INFILE DATAIN N=1 RECFM=F LRECL=160 end=allgone;
 *IF _N_=1 THEN DO;         VCOL=&VERCOL;        DCOL=&DECKCOL;
    IF ^(0 <= VCOL < 81) | ^(0 <= DCOL < 81) THEN DO;
       FILE LOG;
       PUT '*** INVALID COLUMN LOCATION(S) : ' VCOL= DCOL= ;
       STOP;
      END;
    IF VCOL=0 & DCOL=0 THEN DO;
       FILE LOG;
       PUT '*** MULTXRAY SHOULD NOT BE USED FOR A SIMPLE XRAY ';
       STOP;
      END;
    MAXRECL = 160;
    MINRECL = 160;
   if allgone then do;
     STUDYN = _N_-1;
     FILE LOG;
     PUT '*** VCOL= ' VCOL ' / DCOL = ' DCOL ' / MAXRECL= ' MAXRECL ;
    OUTPUT WORK.BITS; 
    end;

*END;

 INPUT    RECORD $CHAR160. @ ;
  
  IF VCOL>0 THEN INPUT @VCOL FORM CB1. @; 
  ELSE FORM='1';

  IF DCOL>0 THEN INPUT @DCOL CARD    CB1. @; 
  ELSE CARD   ='1';
OUTPUT WORK.SCRATCH;
RUN;

DATA _NULL_;
IDSTRING =symget('ARCHNO');
XRAYTYPE =symget('XRAYTYPE');
OPNAME =symget('OPNAME');
FDIR = symget('dir') ;
FTYPE = symget('ftype');
SET BITS;
FILE  PRINT ;
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
PROC FREQ DATA=WORK.SCRATCH;
 TABLE CARD / NOCOL NOROW NOPERCENT LIST ;
 TABLE FORM / NOCOL NOROW NOPERCENT LIST;
RUN;

OPTIONS CENTER;
title1 ' FORM by CARD TABLE                                         Source:  The Roper Center, ' "%sysfunc(today(), mmddyys10.)" ; 
PROC FREQ DATA=WORK.SCRATCH;
 TABLE FORM*CARD / NOROW NOCOL NOPERCENT ;
RUN;

PROC SORT DATA=WORK.SCRATCH;    BY FORM          CARD;
RUN;
DATA _NULL_;
  title1 ;
  FILE     SCRATCH lrecl=165 recfm=f;
  SET WORK.SCRATCH;             BY FORM          CARD;
      LASTV=                 		    LAST.FORM;
      LASTD=                                   LAST.CARD;
     FIRSTD=                                  FIRST.CARD;
  PUT  @1 RECORD        $CHAR160. @161 (FORM          CARD)(1.)
        @163 (LASTV  FIRSTD   LASTD)(1.)     ;
  RETURN;
RUN;
DATA  WORK.XRAYSET (keep = column multstat idstring form card ncards  ); *LENGTH DEFAULT=4;
  INFILE SCRATCH lrecl=165 recfm=f END=ALLGONE;
    FILE PRINT   NOTITLES PS=86 LS=132;
  LENGTH VERNOW  DECKNOW $1. IDSTRING $22 ;
  RETAIN VERNOW  DECKNOW     IDSTRING     ;
  RETAIN        NCARDS    X1-X960 CT1-CT80 CB1-CB80 CM1-CM80 0;
  ARRAY  XRAY   (XPOS)    X1-X960;
  ARRAY  COLTOTL(COLUMN) CT1-CT80;
  ARRAY  COLBLNK(COLUMN) CB1-CB80;
  ARRAY  COLMULT(COLUMN) CM1-CM80;
  ARRAY  PUNS   (P)      P12 P11 P0-P9;

 INPUT @1 RECORD        $CHAR160.  @161 (FORM          CARD)($CHAR1.) 
                                 @163 (LASTV  FIRSTD   LASTD)     (1.) @ ;
 
 IF FIRSTD THEN DO;
   NCARDS=0;       VERNOW=FORM;  DECKNOW=CARD;
   DO OVER XRAY; XRAY = 0; END;
   DO OVER COLTOTL; COLTOTL = 0; COLBLNK = 0; COLMULT = 0; END;
 END;

 XPOS=0; NCARDS+1;
 DO       COLUMN = 1 TO 80;
   INPUT @COLUMN (P12 P11 P0-P9)
                 (PUNCH.12 PUNCH.11 PUNCH.0 PUNCH.1 PUNCH.2 PUNCH.3
                  PUNCH.4  PUNCH.5  PUNCH.6 PUNCH.7 PUNCH.8 PUNCH.9) @;
   CTOT=0;
   DO OVER PUNS;  XPOS=XPOS+1;
     IF    PUNS>0 THEN DO;
       CTOT=CTOT+1;  XRAY=XRAY+1;
      END;
     END;
   IF       CTOT=0 THEN COLBLNK=COLBLNK+1;
   ELSE DO;
         IF CTOT>1 THEN COLMULT=COLMULT+1;
                        COLTOTL=COLTOTL+CTOT;
         END;
   END;
*;
IF ALLGONE | LASTD THEN DO;
  *OUTPUT WORK.XRAYSET; *DROP FORM CARD;
  IDSTRING =symget('ARCHNO');
  XRAYTYPE =symget('XRAYTYPE');
  VCOL=&VERCOL;        DCOL=&DECKCOL;
  FILE PRINT NOTITLES LS=132 PS=86;
  PUT #1 ' Column Frequencies for ' IDSTRING '         TYPE=' XRAYTYPE '                 FORM ' FORM '  CARD ' CARD '(COL=' DCOL')' ;   
  PUT    ' Source:  The Roper Center, ' "%sysfunc(today(), mmddyys10.)" '                                                      Records = ' NCARDS /; 
  IF VMASK>' ' THEN PUT @15 'VALID FORMS :' VMASK ':' @ ;
  IF DMASK>' ' THEN PUT @45 'VALID CARDS :'    DMASK ':' @ ;
  PUT ' ';
  PUT '  COL.#   12&   11-    0     1     2     3     4     5     6  '
              '   7     8     9  BLNK  MULT   SUM  COL.#'  / ;
  XPOS=0;
  DO   COLUMN=1 TO 80;
   PUT COLUMN 6. @;
   DO CTOT=1 TO 12; XPOS=XPOS+1;
     PUT XRAY 6. @ ;
    END;
    PUT (COLBLNK COLMULT COLTOTL COLUMN)(6.);
   END;
  PUT ;
	* output SAS dataset to be used to generate SPSS syntax files;
	DO   COLUMN=1 TO 80;
	 *newcolumn = column;
     multstat = colmult;
	 OUTPUT ;
    END;

 END;
RETURN;
RUN;
*PROC SUMMARY DATA=WORK.XRAYS;
*  CLASS VERNOW  DECKNOW;
*  ID  IDSTRING DCOL VCOL;
*  VAR                    NCARDS    X1-X960  CT1-CT80  CB1-CB80  CM1-CM80;
*  OUTPUT OUT=WORK.XSUMS        SUM= ;
*RUN;

*PROC PRINTTO;
*RUN;

ODS RTF CLOSE;
