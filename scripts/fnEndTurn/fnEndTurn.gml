// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnEndTurn(){
	sysGlobal.owned_coins += sysEvent.gained_coins*sysGlobal.multiplier;
	sysGlobal.owned_special_coins += sysEvent.gained_special_coins;
	sysGlobal.cumuled_gained_coins += sysEvent.gained_coins*sysGlobal.multiplier + sysEvent.gained_special_coins;
	
	//manage Whimsy mode
	if(!sysGlobal.whimsy_mode)
	{
		sysGlobal.whimsy_meter += sysEvent.combo;
		if(sysGlobal.whimsy_meter >= 90)
		{
			sysGlobal.whimsy_mode = true;
			sysGlobal.whimsy_meter = 90;
		}
	}
	else
	{
		sysGlobal.whimsy_meter -= 30;
		if(sysGlobal.whimsy_meter <= 0)
		{
			sysGlobal.whimsy_mode = false;
			sysGlobal.whimsy_meter = 0;
		}
	}
	
	sysEvent.gained_coins = 0;
	sysEvent.gained_special_coins = 0;
	
	sysGlobal.inserted_coins = 0;
	sysGlobal.inserted_special_coins = 0;
	sysGlobal.multiplier = 3;
	sysEvent.combo = 0;
	sysEvent.current_state = EventFlag.Idle;
	GAME_STATE = GameState.Idle;
	
	//Reset all flags
	for(var i = 0; i < array_length(sysGlobal.flags); i++)
	{
		if(sysGlobal.flags[i]) sysGlobal.flags[i] = false;
	}
}