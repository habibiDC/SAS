/* Generated Code (IMPORT) */
/* Source File: Variable_Difference_FriesSalad.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 12:26 AM */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/Variable_Difference_FriesSalad.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);
Proc glm data=WORK.IMPORT2;
	class prime frame;
	model Var_extent Var_tasty Var_healthiness Var_nutrition Var_filling Var_Calories Var_cost Var_ViceVirtue Var_SnackMeal	Var_gilt Var_conflict Var_likely Var_similarity = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;