// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnArrayAny(_array, _value){
	for(var i = 0; i < array_length(_array); i++)
	{
		if(_array[i] == _value)
		{
			return true;
		}
	}
	return false;
}