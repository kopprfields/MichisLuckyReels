// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel(){
	
	var symbol;
	
	var indexes = fnGetWheelIndexes(id, current_index);
	var displayed_symbols = array_create(0);
	if(ds_list_size(wheel_values) > 0)
	{
		displayed_symbols = [
			wheel_values[| indexes[0]],
			wheel_values[| indexes[1]],
			wheel_values[| indexes[2]],
			wheel_values[| indexes[3]],
			wheel_values[| indexes[4]]
		]
		ds_list_clear(wheel_values);
	}
	
	repeat(nb_heart)
	{
		if(i_hate_you)
		{
			symbol = NEW_BROKEN_HEART;
		}
		else
		{
			symbol = NEW_HEART;
		}
		ds_list_add(wheel_values, symbol);
	}
	repeat(nb_ring)
	{
		symbol = NEW_RING;
		ds_list_add(wheel_values, symbol);
	}
	repeat(nb_spoon)
	{
		symbol = NEW_SPOON;
		ds_list_add(wheel_values, symbol);
	}
	
	if(assemble)
	{
		repeat(2)
		{
			fnInitializeWheel_Jareds();
		}
	}
	else
	{
		fnInitializeWheel_Jareds();
	}
	
	if(michimitosis)
	{
		repeat(2)
		{
			fnInitializeWheel_Michis();
		}
	}
	else
	{
		fnInitializeWheel_Michis();
	}
	
	if(!dulled_whimsy)
	{
		repeat(nb_glorp)
		{
			symbol = NEW_GLORP;
			ds_list_add(wheel_values, symbol);
		}
		repeat(nb_tts)
		{
			symbol = NEW_TTS;
			ds_list_add(wheel_values, symbol);
		}
	}
	
	repeat(nb_ferro)
	{
		symbol = NEW_FERRO;
		ds_list_add(wheel_values, symbol);
	}
	ds_list_shuffle(wheel_values);
	
	current_index = clamp(current_index, 0, ds_list_size(wheel_values)-1);
	indexes = fnGetWheelIndexes(id, current_index);
	
	//copy to wheel_values_temp
	ds_list_clear(wheel_values_tmp);
	ds_list_copy(wheel_values_tmp, wheel_values)
	
	//If there are any symbols displayed, copy them to wheel_values_tmp at the current position and set counter to 5
	//This is to avoid showing the symbols being shuffled.
	if(array_length(displayed_symbols) > 0)
	{
		ds_list_replace(wheel_values_tmp, indexes[0], displayed_symbols[0]);
		ds_list_replace(wheel_values_tmp, indexes[1], displayed_symbols[1]);
		ds_list_replace(wheel_values_tmp, indexes[2], displayed_symbols[2]);
		ds_list_replace(wheel_values_tmp, indexes[3], displayed_symbols[3]);
		ds_list_replace(wheel_values_tmp, indexes[4], displayed_symbols[4]);
		
		wheel_values_tmp_count = 5;
	}
}