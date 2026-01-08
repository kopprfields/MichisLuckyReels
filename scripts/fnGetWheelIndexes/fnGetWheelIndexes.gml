// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnGetWheelIndexes(_wheel_id, _middle_index){
	var wheel_size = ds_list_size(_wheel_id.wheel_values)-1 //zero-based
	var wheel_size_minus1 = wheel_size-1 //Case argument should be a constant yada yada yada
	
	var oob_top_index = _middle_index - 2;
	var top_index = _middle_index -1;
	var bottom_index = _middle_index + 1;
	var oob_bottom_index = _middle_index + 2;
	
	switch(_middle_index)
	{
		case(0):
			oob_top_index = wheel_size-1;
			top_index = wheel_size;
			break;
		case(1):
			oob_top_index = wheel_size;
			break;
		case(wheel_size):
			bottom_index = 0;
			oob_bottom_index = 1;
			break;
		case(wheel_size_minus1):
			oob_bottom_index = 0;
			break;
	}
	
	return [oob_top_index, top_index, _middle_index, bottom_index, oob_bottom_index];
}