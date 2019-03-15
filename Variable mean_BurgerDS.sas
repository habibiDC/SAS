/* Generated Code (IMPORT) */
/* Source File: variable mean_burger_DS.xlsx */
/* Source Path: /folders/myfolders */
/* Code generated on: 9/2/16, 10:40 AM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/variable mean_burger_DS.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);
Proc glm data=WORK.IMPORT;
	class prime frame;
	model ExtentEnjoy_double ExtentEnjoy_small tasty_double tasty_small	healthiness_double healthiness_small nutrition_double nutrition_small filling_double filling_small Calorie_double Calorie_small cost_double	cost_small ViceVirtue_double SnackMeal_double ViceVirtue_small SnackMeal_small	guilt_double guilt_small conflict_double conflict_small LikelyToAsk_double LikelyToAsk_small similar = prime frame prime|frame/ss3;
	lsmeans prime frame prime|frame/pdiff;
	manova;
run;
proc means data=WORK.IMPORT;
class prime frame;
	var ExtentEnjoy_double ExtentEnjoy_small tasty_double tasty_small	healthiness_double healthiness_small nutrition_double nutrition_small filling_double filling_small Calorie_double Calorie_small cost_double	cost_small ViceVirtue_double SnackMeal_double ViceVirtue_small SnackMeal_small	guilt_double guilt_small conflict_double conflict_small LikelyToAsk_double LikelyToAsk_small similar;
run;
