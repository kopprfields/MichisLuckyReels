// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnGetArrayScore(_array){
	var result = undefined;
    var first_value = Symbols.Whimsy;
	
	//Find first non-whimsy value
	first_value = _array[fnGetFirstNonWhimsyIndex(_array)].symbolType;
	
	//If first value is heart, only 2 needed to gain coins, otherwise 3 symbols needed.
	var heart_count = 0;
	var whimsy_count = 0;
	var previous_symbol_valid = true;
	for (var i = 0; i < array_length(_array); i++) 
	{
		if(previous_symbol_valid)
		{
			if(_array[i].symbolType == Symbols.Heart)
			{
				heart_count++;
			}
			else if(_array[i].symbolType == Symbols.Whimsy)
			{
				whimsy_count++;
			}
			else if(i == 1) //Middle symbol is neither heart or whimsy => lost
			{
				previous_symbol_valid = false;
			}
		}
		else
		{
			break;
		}
	}
	
	if(previous_symbol_valid && whimsy_count+heart_count >= 2)
	{
		if(whimsy_count = 3)
		{
			//Giga Jackpot
			return {symbol: sysGlobal.symbols_list[Symbols.Whimsy], number: 3};
		}
		else
		{
			return {symbol: sysGlobal.symbols_list[Symbols.Heart], number: whimsy_count+heart_count};
		}
	}
	else
	{
	    for (var i = 0; i < array_length(_array); i++) 
		{
	        if (_array[i].symbolType != first_value && _array[i].symbolType != Symbols.Whimsy) //Whimsy acts as joker 
			{
	            result = undefined; 
				break;
	        }
			else
			{
				result = {symbol: sysGlobal.symbols_list[first_value], number: 3};
			}
	    }
	    return  result;
	}
}