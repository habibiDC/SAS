data Burger_Salad;
 	input prime$ frame$ choice1$ r n;
	datalines;
N Pos Yes 4 9
N Pos No 3 9
G Pos Yes 3 8
G Pos No 1 6
H Pos Yes 8 10
H Pos No 5 10
C Pos Yes 6 11
C Pos No 3 7
N Neg Yes 7 14
N Neg No 2 3
G Neg Yes 9 13
G Neg No 3 11
H Neg Yes 3 7
H Neg No 2 8
C Neg Yes 7 10
C Neg No 5 9
;
run;
proc genmod data=Burger_Salad;
	class prime frame choice1;
	model r/n = prime frame prime|frame choice1/dist = binomial
												link = logit
												lrci;
	lsmeans prime Frame prime|frame choice1/pdiff;
run;
