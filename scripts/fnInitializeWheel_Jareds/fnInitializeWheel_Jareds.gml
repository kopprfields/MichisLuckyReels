// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel_Jareds(){
	var symbol;
	var nb_repeat = nb_jared
	if(scatter)
	{
		nb_repeat = floor(nb_jared/2);
	}
	
	
	repeat(nb_repeat)
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