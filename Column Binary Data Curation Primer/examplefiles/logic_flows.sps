* Encoding: windows-1252.
*Col. 21 is multi-punched; checked if splitting the variable based on punches in col. 20 resolve the multi-punches. 
    COMPUTE count=sum(c21_pY TO c21_p9).
FREQUENCIES count.
CROSSTABS count BY c21_pY TO c21_p9.
DELETE VARIABLES count.
*The meaning of these punches (Q16H1) is dependent on what was punched for c20 (Q16G1) - will need to recode using IF statements (see Additional Recodes).
*Filter by c20_p1.
COMPUTE filter_$=(c20_p1 = 1).
VARIABLE LABELS filter_$ 'p1'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
*Run crosstabs with filter on.
COMPUTE count=sum(c21_pY TO c21_p9).
FREQUENCIES count.
CROSSTABS count BY c21_pY TO c21_p9.
DELETE VARIABLES count.
FILTER OFF.
*Filtering does not resolve multi-punches.
*Recode into sprayed variables - 12 corresponding to "Satisfactory" (col. 20, punch 1) and 12 corresponding to "Unsatisfactory" (col. 20, punch 2).

*note: c20_pY, p1, and p2 have already been recoded into a new variable, Q16G1.
IF Q16G1=1 AND c21_pY=1 Q16H1A_Y=1.
IF Q16G1=1 AND c21_pX=1 Q16H1A_X=1.
IF Q16G1=1 AND c21_p0=1 Q16H1A_0=1.
IF Q16G1=1 AND c21_p1=1 Q16H1A_1=1.
IF Q16G1=1 AND c21_p2=1 Q16H1A_2=1.
IF Q16G1=1 AND c21_p3=1 Q16H1A_3=1.
IF Q16G1=1 AND c21_p4=1 Q16H1A_4=1.
IF Q16G1=1 AND c21_p5=1 Q16H1A_5=1.
IF Q16G1=1 AND c21_p6=1 Q16H1A_6=1.
IF Q16G1=1 AND c21_p7=1 Q16H1A_7=1.
IF Q16G1=1 AND c21_p8=1 Q16H1A_8=1.
IF Q16G1=1 AND c21_p9=1 Q16H1A_9=1.
EXECUTE.
 
IF Q16G1=2 AND c21_pY=1 Q16H1B_Y=1.
IF Q16G1=2 AND c21_pX=1 Q16H1B_X=1.
IF Q16G1=2 AND c21_p0=1 Q16H1B_0=1.
IF Q16G1=2 AND c21_p1=1 Q16H1B_1=1.
IF Q16G1=2 AND c21_p2=1 Q16H1B_2=1.
IF Q16G1=2 AND c21_p3=1 Q16H1B_3=1.
IF Q16G1=2 AND c21_p4=1 Q16H1B_4=1.
IF Q16G1=2 AND c21_p5=1 Q16H1B_5=1.
IF Q16G1=2 AND c21_p6=1 Q16H1B_6=1.
IF Q16G1=2 AND c21_p7=1 Q16H1B_7=1.
IF Q16G1=2 AND c21_p8=1 Q16H1B_8=1.
IF Q16G1=2 AND c21_p9=1 Q16H1B_9=1.
EXECUTE.
 
*Check recoding.
USE ALL.
COMPUTE filter_$=(Q16G1 = 1).
VARIABLE LABELS filter_$ '1'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
FRE
c21_pY Q16H1A_Y
c21_pX Q16H1A_X
c21_p0 Q16H1A_0
c21_p1 Q16H1A_1
c21_p2 Q16H1A_2
c21_p3 Q16H1A_3
c21_p4 Q16H1A_4
c21_p5 Q16H1A_5
c21_p6 Q16H1A_6
c21_p7 Q16H1A_7
c21_p8 Q16H1A_8
c21_p9 Q16H1A_9.
FILTER OFF.
 
USE ALL.
COMPUTE filter_$=(Q16G1 = 2).
VARIABLE LABELS filter_$ '1'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
FRE
c21_pY Q16H1B_Y
c21_pX Q16H1B_X
c21_p0 Q16H1B_0
c21_p1 Q16H1B_1
c21_p2 Q16H1B_2
c21_p3 Q16H1B_3
c21_p4 Q16H1B_4
c21_p5 Q16H1B_5
c21_p6 Q16H1B_6
c21_p7 Q16H1B_7
c21_p8 Q16H1B_8
c21_p9 Q16H1B_9.
FILTER OFF.
 
*Delete variables that have been successfully recoded.
DELETE VARIABLES c21_pY to c21_p9.
