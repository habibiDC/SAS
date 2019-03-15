data Fries_Salad;
 	input prime$ frame$ choice1$ r n;
	datalines;
N Pos Yes 4 8
N Pos No 6 8
G Pos Yes 8 11
G Pos No 4 11
H Pos Yes 6 13
H Pos No  3 6
C Pos Yes 8 11
C Pos No 4 8
N Neg Yes 5 9
N Neg No 1 5
G Neg Yes 3 6
G Neg No 8 10
H Neg Yes 3 9
H Neg No 3 7
C Neg Yes 4 13
C Neg No 4 10
;
run;
proc genmod data=Fries_Salad;
	class prime frame choice1;
	model r/n = prime frame prime|frame choice1/dist = binomial
												link = logit
												lrci;
	lsmeans prime Frame prime|frame choice1/pdiff;
run;
