*TITLE 'ONEBIN.SAS ';

/**********************************************************************/
/* ONEBIN.SAS is used to generate xrays of single card BINARY data    */
/* files. Xrays are reports of frequency counts for each data column. */     
/* This program is called from RUNXRAY.SAS                            */
/* Created: 8/12/2003. By Demi Li                                     */
/* Added WORK.XRAYSET keep info and output statement to be used to    */
/* generate SPSS data definition list file. 10/20/2006                */
/* Modified: 10/20/2006. By Marc Maynard							  */
/* Last modified: 9/02/2022. By Jessica Ko							  */
/**********************************************************************/
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
OPTIONS NOCENTER NODATE NONUMBER;
ODS RTF FILE = XRAY style=styles.test;
DATA WORK.BITS(KEEP=VCOL DCOL STUDYN MINRECL MAXRECL);
  LENGTH DEFAULT=4 ;
  RETAIN           VCOL DCOL STUDYN MINRECL MAXRECL 0;
  ARRAY  PUNS (P)  P12 P11 P0 P1-P9;
 INFILE DATAIN N=1 RECFM=F LRECL=160 end=allgone;
    VCOL=&VERCOL;        DCOL=&DECKCOL;
    IF ^(0 <= VCOL < 81) | ^(0 <= DCOL < 81) THEN DO;
       FILE LOG;
       PUT '*** INVALID COLUMN LOCATION(S) : ' VCOL= DCOL= ;
       STOP;
      END;
    IF ^VCOL=0 & ^DCOL=0 THEN DO;
       FILE LOG;
       PUT '*** MULTBIN SHOULD BE USED FOR A MULTI-CARD OR MULTI-FORM XRAY ';
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
 INPUT    RECORD $CHAR160. ;



RUN;

DATA _NULL_;
IDSTRING =symget('ARCHNO');
XRAYTYPE =symget('XRAYTYPE');
OPNAME =symget('OPNAME');
FDIR = symget('dir') ;
FTYPE = symget('ftype');
SET BITS;
FILE PRINT NOTITLES PS=86 LS=132;
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

DATA  WORK.XRAYSET (keep = column multstat idstring form card ncards varname pu1 pu2 pu3 pu4 pu5 pu6 pu7 pu8 pu9 pu0 puX puY );
      INFILE DATAIN  N=1 RECFM=F LRECL=160 END=ALLGONE;
 FILE PRINT NOTITLES PS=86 LS=132;
  LENGTH DEFAULT=4                                    ;
  RETAIN X1-X960 CT1-CT80 CB1-CB80 CM1-CM80 NCARDS 0  ;
  ARRAY  XRAY   (XPOS)    X1-X960;
  ARRAY  COLTOTL(COLUMN) CT1-CT80;
  ARRAY  COLBLNK(COLUMN) CB1-CB80;
  ARRAY  COLMULT(COLUMN) CM1-CM80;
  ARRAY  PUNS            P12 P11 P0-P9;
  IF _N_=1 THEN DO;
    INFILE  DATAIN N=1 RECFM=F LRECL=160  END=ALLGONE  ;
  END;
  XPOS=0; NCARDS + 1;
  DO       COLUMN = 1 TO 80;
    INPUT @COLUMN (P12 P11 P0-P9)
                  (PUNCH.12 PUNCH.11 PUNCH.0 PUNCH.1 PUNCH.2 PUNCH.3
                   PUNCH.4  PUNCH.5  PUNCH.6 PUNCH.7 PUNCH.8 PUNCH.9) @;
    CTOT=0;
    DO OVER PUNS;  XPOS=XPOS+1;
     IF     PUNS>0 THEN DO;
       CTOT=CTOT+1;
       XRAY=XRAY+1;
       END;
      END;
     IF     CTOT=0 THEN COLBLNK=COLBLNK+1;
     ELSE DO;
       IF   CTOT>1 THEN COLMULT=COLMULT+1;
                        COLTOTL=COLTOTL+CTOT;
      END;
  END;


 /*IGNORE:*/
  IF ALLGONE THEN DO; * FINAL SUMMARY;
    IDSTRING=symget('ARCHNO');
    XRAYTYPE=symget('XRAYTYPE');
    FORM = '1'; CARD = '1'; DCOL = '0';
     /*  IDSTRING=STUDYID; INPUT STUDYID */
   FILE PRINT NOTITLES PS=86 LS=132;
  PUT #1 ' Column Frequencies for ' IDSTRING '         TYPE=' XRAYTYPE '                 FORM ' FORM '  CARD ' CARD '(COL=' DCOL')' ;   
  PUT    ' Source:  The Roper Center, ' "%sysfunc(today(), mmddyys10.)" '                                                      Records = ' NCARDS /; 
  
    PUT '  COL.#   12&   11-    0     1     2     3     4     5     6  '
               '   7     8     9  BLNK  MULT   SUM  COL.#'  / ;
    PUT OVERPRINT
        '  _____ _____ _____ _____ _____ _____ _____'
     ' _____ _____ _____ _____ _____ _____ _____'
     ' _____ ______ ____' ;
    XPOS=0;
    length valid $2000.;
    length puY puX pu0 - pu9 $5.;
	length varname $4.;
    DO   COLUMN=1 TO 80;
      PUT COLUMN 6. @;
      DO CTOT=1 TO 12; XPOS=XPOS+1;
        PUT XRAY 6. @ ;
        *if colmult > 0 then do;
	 if xray > 0 then do;
           valid = trim(valid)||' P'||left(put(ctot,2.));
           if ctot = 1 then puY='*';
           if ctot = 2 then puX='*';
           if ctot = 3 then pu0='*';
           if ctot = 4 then pu1='*';
           if ctot = 5 then pu2='*';
           if ctot = 6 then pu3='*';
           if ctot = 7 then pu4='*';
           if ctot = 8 then pu5='*';
           if ctot = 9 then pu6='*';
           if ctot = 10 then pu7='*';
           if ctot = 11 then pu8='*';
           if ctot = 12 then pu9='*';
         end;
        *end;
      END;
      PUT (COLBLNK COLMULT COLTOTL COLUMN)(6.);
     multstat = colmult;
     valpun = valid;
      OUTPUT ;
     valid='';
     puY='';puX='';pu0='';pu1='';pu2='';pu3='';pu4='';pu5='';pu6='';pu7='';pu8='';pu9='';
     END;

 END;
 RETURN;
RUN;

*PROC PRINTTO;
*RUN;

ODS RTF CLOSE;
