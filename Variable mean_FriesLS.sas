/* Generated Code (IMPORT) */
/* Source File: variable mean_FriesLS.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 11:29 AM */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/folders/myfolders/variable mean_FriesLS.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;


%web_open_table(WORK.IMPORT1);
proc glm data=WORK.IMPORT1;
	class prime frame;
	model ExtentEnjoy_large ExtentEnjoy_small tasty_large tasty_small	healthiness_large healthiness_small nutrition_large nutrition_small filling_large filling_small Calorie_large Calorie_small cost_large cost_small ViceVirtue_large SnackMeal_large ViceVirtue_small SnackMeal_small	guilt_large guilt_small conflict_large conflict_small LikelyToAsk_large LikelyToAsk_small similar = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;
proc means data=WORK.IMPORT1;
class prime frame;
	var ExtentEnjoy_large ExtentEnjoy_small tasty_large tasty_small	healthiness_large healthiness_small nutrition_large nutrition_small filling_large filling_small Calorie_large Calorie_small cost_large cost_small ViceVirtue_large SnackMeal_large ViceVirtue_small SnackMeal_small	guilt_large guilt_small conflict_large conflict_small LikelyToAsk_large LikelyToAsk_small similar;
run;