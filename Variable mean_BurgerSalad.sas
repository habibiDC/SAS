/* Generated Code (IMPORT) */
/* Source File: variable mean_BurgerSalad.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 11:47 AM */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/variable mean_BurgerSalad.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);
proc glm data=WORK.IMPORT3;
	class prime frame;
	model ExtentEnjoy_Burger ExtentEnjoy_Salad tasty_Burger tasty_Salad healthiness_Burger healthiness_Salad nutrition_Burger nutrition_Salad filling_Burger filling_Salad Calorie_Burger Calorie_Salad cost_Burger cost_Salad ViceVirtue_Burger SnackMeal_Burger ViceVirtue_Salad SnackMeal_Salad	guilt_Burger guilt_Salad conflict_Burger conflict_Salad LikelyToAsk_Burger LikelyToAsk_Salad similar = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;
proc means data=WORK.IMPORT3;
	class prime frame;
	var ExtentEnjoy_Burger ExtentEnjoy_Salad tasty_Burger tasty_Salad healthiness_Burger healthiness_Salad nutrition_Burger nutrition_Salad filling_Burger filling_Salad Calorie_Burger Calorie_Salad cost_Burger cost_Salad ViceVirtue_Burger SnackMeal_Burger ViceVirtue_Salad SnackMeal_Salad	guilt_Burger guilt_Salad conflict_Burger conflict_Salad LikelyToAsk_Burger LikelyToAsk_Salad similar;
run;