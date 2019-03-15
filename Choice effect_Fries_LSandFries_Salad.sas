data foodchoice1;
 	input prime$ frame$ Set$ choice1$ r n;
	datalines;
N Pos Fries_LS Yes 6 9
N Pos Fries_LS No 4 11
N Pos Fries_Salad Yes 4 8
N Pos Fries_Salad No 6 8

G Pos Fries_LS Yes 5 11
G Pos Fries_LS No 1 8
G Pos Fries_Salad Yes 8 11
G Pos Fries_Salad No 4 11

H Pos Fries_LS Yes 6 7
H Pos Fries_LS No 5 9
H Pos Fries_Salad Yes 6 13
H Pos Fries_Salad No  3 6

C Pos Fries_LS Yes 10 14
C Pos Fries_LS No 3 3
C Pos Fries_Salad Yes 8 11
C Pos Fries_Salad No 4 8

N Neg Fries_LS Yes 9 13
N Neg Fries_LS No 1 11
N Neg Fries_Salad Yes 5 9
N Neg Fries_Salad No 1 5

G Neg Fries_LS Yes 5 7
G Neg Fries_LS No 2 7
G Neg Fries_Salad Yes 3 6
G Neg Fries_Salad No 8 10

H Neg Fries_LS Yes 8 10
H Neg Fries_LS No 3 13
H Neg Fries_Salad Yes 3 9
H Neg Fries_Salad No  3 7

C Neg Fries_LS Yes 6 10
C Neg Fries_LS No 1 3
C Neg Fries_Salad Yes 4 13
C Neg Fries_Salad No 4 10
;
run;
proc genmod data=foodchoice1;
	class prime frame set choice1;
	model r/n = prime frame prime|frame choice1/dist = binomial
												link = logit
												lrci;
	lsmeans prime Frame prime|frame choice1/pdiff;
run;