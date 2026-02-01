// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnSetMultiplier(){
	var total_coins = sysGlobal.inserted_coins+sysGlobal.inserted_special_coins;
	
	if(total_coins >= sysGlobal.bet_base_price + 2*sysGlobal.bet_increment)
	{
		sysGlobal.multiplier = 1;
		sysGlobal.bet_level = 3;
	}
	else if (total_coins >= sysGlobal.bet_base_price + sysGlobal.bet_increment)
	{
		sysGlobal.multiplier = 2;
		sysGlobal.bet_level = 2;
	}
	else if (total_coins >= sysGlobal.bet_base_price)
	{
		sysGlobal.multiplier = 5;
		sysGlobal.bet_level = 1;
	}
	else if (total_coins > 0)
	{
		sysGlobal.multiplier = 0.5;
		sysGlobal.bet_level = 1;
	}
	else
	{
		sysGlobal.multiplier = 0;
		sysGlobal.bet_level = 0;
	}
}