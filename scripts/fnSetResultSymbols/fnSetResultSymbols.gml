// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnSetResultSymbols(){
	var wheel_result_indexes = fnGetWheelIndexes(id, current_index);
	var symbol = undefined;
	
	for(var i = 1; i < 4; i++)
	{
		symbol = wheel_values[| wheel_result_indexes[i]];
		ds_grid_set(sysGlobal.result_grid, wheel_number, i-1, symbol);
	}
}