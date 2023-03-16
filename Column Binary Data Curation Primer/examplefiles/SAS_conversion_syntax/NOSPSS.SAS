*TITLE 'NOSPSS.SAS ';

/*********************************************************************/
/* NOSPSS.SAS is used to write a note to the SAS log when generating */
/* xray files without requesting an SPSS data definition list file   */
/* as well. Information displayed here based on information gathered */     
/* from the XRAY dataset. This program is called from RUNXRAY.SAS    */
/* Created: 10/20/2006. By Marc Maynard                              */
/* Modified: 10/16/2006.  By Marc Maynard							 */
/* Last modified: 09/02/2022. By Jessica Ko							 */
/*********************************************************************/
OPTIONS NOCENTER NODATE NONUMBER;
DATA _NULL_;
IDSTRING =symget('ARCHNO');
OPNAME =symget('OPNAME');
FDIR = symget('dir') ;
TYPE = symget('XRAYTYPE');
FILE LOG;
PUT '******************************************************* ';
PUT '*STUDY:         ' IDSTRING  '.';
dsfn=PATHNAME("DATAIN");
put '*Dataset:       ' dsfn '.';
put '*Type of XRAY:  ' TYPE '.';
PUT '*Generated:     ' "%sysfunc (today(), mmddyys10.)" '.'; 
PUT '*Operator:      ' OPNAME '.';
PUT '   ';
PUT '******************************************************* ';
PUT '   NO SPSS SYNTAX FILE WAS REQUESTED FOR THIS STUDY     ';
PUT '******************************************************* ';
PUT '   ';
PUT '   ';
PUT '   ';
RUN;


