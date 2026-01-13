// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnEvaluateHit(_value1, _value2, _value3){
	//Check for heart first because only 2 values are needed for a hit
	if(_value2.symbolType == Symbols.Heart || _value2.symbolType == Symbols.Whimsy)
	{
		//Case 1: 3-symbols hit
		if((_value1.symbolType == Symbols.Heart || _value1.symbolType == Symbols.Whimsy) && (_value3.symbolType == Symbols.Heart || _value3.symbolType == Symbols.Whimsy))
		{
			//Sub-case 1: all symbols are whimsy = giga jackpot
			if(_value1.symbolType == Symbols.Whimsy && _value2 == Symbols.Whimsy && _value3.symbolType == Symbols.Whimsy)
			{
				sysGlobal.flags[EventFlag.GigaJackpot] = true;
				return {symbols: [_value1, _value2, _value3], isSpecialEvent: true}
			}
			else //Sub-case 2: at least one symbol is heart = regular triple heart score
			{
				return {symbols: [_value1, _value2, _value3], isSpecialEvent: false}
			}
		}
		//Case 2: 2-symbols hit 
		else if(_value1.symbolType == Symbols.Heart)
		{
			return {symbols: [_value1, _value2], isSpecialEvent: false}
		}
		else if(_value3.symbolType == Symbols.Heart)
		{
			return {symbols: [_value2, _value3], isSpecialEvent: false}
		}
	}
	
	//Find first non-whimsy value
	var symbol_type;
	if(_value1.symbolType != Symbols.Whimsy) symbol_type = _value1.symbolType;
	else if(_value2.symbolType != Symbols.Whimsy) symbol_type = _value2.symbolType;
	else symbol_type = _value3.symbolType;
	var _isSpecialEvent = false;
	var result_types = [_value1.symbolType, _value2.symbolType, _value3.symbolType];
	var result_ids = [_value1.symbolId, _value2.symbolId, _value3.symbolId];
	
	var valid_types = [symbol_type, Symbols.Whimsy];
	
	//Check for hit
	if(array_contains(valid_types, _value1.symbolType) && array_contains(valid_types, _value2.symbolType) && array_contains(valid_types, _value3.symbolType))
	{
		//If Jared, check for Named Jared and raise corresponding flag(s) if necessary 
		if(symbol_type == Symbols.Jared)
		{
			if(array_contains(result_ids, Symbols.Mita) && array_contains(result_ids, Symbols.Fii))
			{
				sysGlobal.flags[EventFlag.SuperJared] = true;
				_isSpecialEvent = true;
			}
			else if(array_contains(result_ids, Symbols.Mita))
			{
				sysGlobal.flags[EventFlag.Mita] = true;
				_isSpecialEvent = true;
			}
			else if(array_contains(result_ids, Symbols.Fii))
			{
				sysGlobal.flags[EventFlag.Fii] = true;
				_isSpecialEvent = true;
			}
		}
		
		//Same with Collabs
		if(symbol_type == Symbols.Michi)
		{
			if(_value1.symbolId != _value1.symbolType || _value2.symbolId != _value2.symbolType || _value3.symbolId != _value3.symbolType)
			{
				sysGlobal.flags[EventFlag.Collab] = true;
				_isSpecialEvent = true;
			}
		}
		
		//check if at least one symbol is Whimsy
		if(array_contains(result_types, Symbols.Whimsy))
		{
			if(array_contains(result_ids, Symbols.Tts))
			{
				sysGlobal.flags[EventFlag.Tts] = true;
				_isSpecialEvent = true;
			}
			if(array_contains(result_ids, Symbols.Ferro))
			{
				sysGlobal.flags[EventFlag.Ferro] = true;
				_isSpecialEvent = true;
			}
		}
		
		return {symbols: [_value1, _value2, _value3], isSpecialEvent: _isSpecialEvent}
	}
	
	//If no hit, return undefined
	return undefined;
}