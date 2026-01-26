// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel_Jareds(){
	var symbol;
	repeat(nb_jared)
	{
		symbol = NEW_JARED;
		ds_list_add(wheel_values, symbol);
	}
	repeat(nb_fii)
	{
		symbol = NEW_FII;
		ds_list_add(wheel_values, symbol);
	}
	repeat(nb_mita)
	{
		symbol = NEW_MITA;
		ds_list_add(wheel_values, symbol);
	}
}