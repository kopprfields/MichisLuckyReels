// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnCountSymbols(_wheel_id, _symbol_id){
	var result = 0;
	for(var i = 0; i < ds_list_size(_wheel_id.wheel_values); i++)
	{
		if(_wheel_id.wheel_values[| i].symbolId == _symbol_id)
		{
			result++;
		}
	}
	return result;
}