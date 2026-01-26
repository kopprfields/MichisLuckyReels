// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel_Michis(){
	var symbol;
	repeat(nb_michi)
	{
		symbol = NEW_MICHI;
		ds_list_add(wheel_values, symbol);
	}
}