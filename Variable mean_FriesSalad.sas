/* Generated Code (IMPORT) */
/* Source File: variable mean_FriesSalad.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 11:37 AM */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/variable mean_FriesSalad.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);
proc glm data=WORK.IMPORT2;
	class prime frame;
	model ExtentEnjoy_Fries ExtentEnjoy_Salad tasty_Fries tasty_Salad healthiness_Fries healthiness_Salad nutrition_Fries nutrition_Salad filling_Fries filling_Salad Calorie_Fries Calorie_Salad cost_Fries cost_Salad ViceVirtue_Fries SnackMeal_Fries ViceVirtue_Salad SnackMeal_Salad	guilt_Fries guilt_Salad conflict_Fries conflict_Salad LikelyToAsk_Fries LikelyToAsk_Salad similar = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;
proc means data=WORK.IMPORT2;
	class prime frame;
	var ExtentEnjoy_Fries ExtentEnjoy_Salad tasty_Fries tasty_Salad healthiness_Fries healthiness_Salad nutrition_Fries nutrition_Salad filling_Fries filling_Salad Calorie_Fries Calorie_Salad cost_Fries cost_Salad ViceVirtue_Fries SnackMeal_Fries ViceVirtue_Salad SnackMeal_Salad	guilt_Fries guilt_Salad conflict_Fries conflict_Salad LikelyToAsk_Fries LikelyToAsk_Salad similar;
run;