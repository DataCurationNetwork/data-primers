Title;
*********************************************************************
* RUNXRAY.SAS is used to generate xrays of survey data files.       *
* Xrays are reports of frequency counts for each data column.       *
* For all the datasets, parameters no. 1,2,5, & 7 should be specified. *
* For multcards datasets, column parameters for card and form       *
* should also be specified if appropriate.                          *
* Added functionality to take results of column binary xray and     *
* generate a basic SPSS data definition file to spray out multi-    *
* punched columns using ONESPS.SAS or MULTSPS.SAS.                  *
* Created: 8/12/2003.   By Demi Li                                  *
* Modified: 10/16/2006.  By Marc Maynard							*
* Last modified: 09/02/2022. By Jessica Ko							*
*********************************************************************;
/* Set your directories            */
FILENAME ONEASC   'C:\Users\jr945\Desktop\colbin_convert_syntax\ONEASC.SAS' ; /*Use for one card ascii files */
FILENAME ONEBIN   'C:\Users\jr945\Desktop\colbin_convert_syntax\ONEBIN.SAS' ; /*Use for one card column binary data files */
FILENAME MULTASC  'C:\Users\jr945\Desktop\colbin_convert_syntax\MULTASC.SAS' ;/*Use for multiple card ascii files */
FILENAME MULTBIN  'C:\Users\jr945\Desktop\colbin_convert_syntax\MULTBIN.SAS' ; /*Use for multiple card column binary files */
FILENAME FULLSPSS 'C:\Users\jr945\Desktop\colbin_convert_syntax\FULLSPSS.SAS' ; /*Use to generate an SPSS setup file */
FILENAME NOSPSS   'C:\Users\jr945\Desktop\colbin_convert_syntax\NOSPSS.SAS' ; /*Use to NOT generate an SPSS setup file */
FILENAME SCRATCH  'C:\Users\jr945\Desktop\colbin_convert_syntax\temp\scratch.dat';
%LET ftype = _xray;
%LET dlm = \ ;

/* INPUT PARAMETERS HERE THAT APPLY TO ALL FILES LISTED BELOW */
%LET OPNAME = Jessica;                      /* A. OPERATOR NAME                             */
%LET dir = C:\Users\jr945\Desktop\colbin_convert_syntax\temp;            /* B. ENTER DIRECTORY FOR XRAYS TO BE STORED    */

/* IBM Column Binary Examples */
/* 1.INPUT DATASET PATH AND FILENAME*/;
FILENAME DATAIN 'C:\Users\jr945\Desktop\colbin_convert_syntax\3302640299d19780912_gbsslt.c0398' lrecl=10000  ;
/* 2.INPUT THE ARCHIVE NUMBER       */
%LET  ARCHNO    =  GBSSLT64-CQ398;
/* 3.INPUT THE COLUMN NUMBER OF CARD*/
%LET  DECKCOL   =  80;
/* 4.INPUT THE COLUMN NUMBER OF FORM*/
%LET  VERCOL    =  0;
/* 5.INPUT THE XRAY TYPE            */
%LET  XRAYTYPE  =  onebin;
/* 6.INPUT THE SPSS OUTPUT TYPE     */
%LET  SPSSTYPE  =  fullspss; /* SELECT fullspss OR nospss  */
%LET flnm = &dir.&dlm.&archno.&ftype.&xraytype..rtf;FILENAME XRAY "&flnm" lrecl=10000;%INCLUDE &XRAYTYPE;
%LET flnm = &dir.&dlm.&archno..sps;                 FILENAME SPSS "&flnm" lrecl=10000;%INCLUDE &SPSSTYPE;
/*7. INPUT NUMBER OF CARDS	(We refer to records interchangeably as cases; SPSS refers to cards as records)		*/
%LET  CARD  =  1;
