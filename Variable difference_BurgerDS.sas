/* Generated Code (IMPORT) */
/* Source File: Varible_Difference_BurgerDS.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 2:27 AM */

%web_drop_table(WORK.IMPORT4);


FILENAME REFFILE '/folders/myfolders/Varible_Difference_BurgerDS.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT4;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT4; RUN;


%web_open_table(WORK.IMPORT4);
Proc glm data=WORK.IMPORT4;
	class prime frame;
	model Var_extent Var_tasty Var_healthiness Var_nutrition Var_filling Var_Calories Var_cost Var_ViceVirtue Var_SnackMeal	Var_gilt Var_conflict Var_likely Var_similarity = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;