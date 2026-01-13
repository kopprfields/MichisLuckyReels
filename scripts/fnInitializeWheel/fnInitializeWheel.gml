// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel(){
	ds_list_clear(wheel_values);
	
	repeat(nb_heart)
	{
		ds_list_add(wheel_values, HEART);
	}
	repeat(nb_ring)
	{
		ds_list_add(wheel_values, RING);
	}
	repeat(nb_spoon)
	{
		ds_list_add(wheel_values, SPOON);
	}
	repeat(nb_jared)
	{
		ds_list_add(wheel_values, JARED);
	}
	repeat(nb_fii)
	{
		ds_list_add(wheel_values, FII);
	}
	repeat(nb_mita)
	{
		ds_list_add(wheel_values, MITA);
	}
	repeat(nb_michi)
	{
		ds_list_add(wheel_values, MICHI);
	}
	repeat(nb_glorp)
	{
		ds_list_add(wheel_values, GLORP);
	}
	repeat(nb_ferro)
	{
		ds_list_add(wheel_values, FERRO);
	}
	ds_list_shuffle(wheel_values);
	
	current_index = clamp(current_index, 0, ds_list_size(wheel_values)-1);
}