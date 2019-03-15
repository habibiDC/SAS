data Fries_LS;
 	input prime$ frame$ choice1$ r n;
	datalines;
G Pos No 1 8
H Pos No 5 9
C Pos Yes 10 14
G Neg Yes 5 7
N Neg No 1 11
G Pos Yes 5 11
G Neg No 2 7
C Neg No 1 3
C Pos No 3 3
H Pos Yes 6	7
H Neg No 3 13
N Neg Yes 9 13
H Neg Yes 8	10
C Neg Yes 6	10
N Pos Yes 6	9
N Pos No 4 11

;
RUN;
proc genmod data=Fries_LS;
	class prime frame choice1;
	model r/n = prime frame prime|frame choice1/dist = binomial
												link = logit
												lrci;
	lsmeans prime Frame prime|frame choice1/pdiff;
run;
