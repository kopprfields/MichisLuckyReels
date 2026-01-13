// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnSetMultiplier(){
	switch(sysGlobal.inserted_coins+sysGlobal.inserted_special_coins)
	{
		case(0):
		case(1):
			sysGlobal.multiplier = 3;
			break;
		case(2):
			sysGlobal.multiplier = 2;
			break;
		case(3):
			sysGlobal.multiplier = 1;
			break;
	}
}