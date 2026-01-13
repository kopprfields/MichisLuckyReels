// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnProcessResult(_inserted_coins){
	var result = array_create(0);
	var hit = undefined;
	
	//Check hits
	hit = fnEvaluateHit(result_grid[# 0, 1], result_grid[# 1, 1], result_grid[# 2, 1]);
	if(hit != undefined) array_push(result, hit)
	
	if(_inserted_coins >= 2)
	{
		hit = fnEvaluateHit(result_grid[# 0, 0], result_grid[# 1, 0], result_grid[# 2, 0]);
		if(hit != undefined) array_push(result, hit)
		hit = fnEvaluateHit(result_grid[# 0, 2], result_grid[# 1, 2], result_grid[# 2, 2]);
		if(hit != undefined) array_push(result, hit)
	}
	
	if(_inserted_coins >= 3)
	{
		hit = fnEvaluateHit(result_grid[# 0, 0], result_grid[# 1, 1], result_grid[# 2, 2]);
		if(hit != undefined) array_push(result, hit)
		hit = fnEvaluateHit(result_grid[# 0, 2], result_grid[# 1, 1], result_grid[# 2, 0]);
		if(hit != undefined) array_push(result, hit)
	}
	
	return result;
}