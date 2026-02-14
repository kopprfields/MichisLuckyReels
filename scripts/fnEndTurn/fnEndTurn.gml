// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnEndTurn(){
	sysGlobal.owned_coins += floor(max(sysEvent.gained_coins, 0)*(sysGlobal.multiplier+sysEvent.bonus_multiplier));
	sysGlobal.owned_special_coins += floor(sysEvent.gained_special_coins);
	sysGlobal.cumuled_gained_coins += floor(sysEvent.gained_coins*(sysGlobal.multiplier+sysEvent.bonus_multiplier) + sysEvent.gained_special_coins*sysGlobal.special_coin_value);
	
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
	
	if(sysGlobal.flags[EventFlag.CorpaClap])
	{
		sysGlobal.inserted_coins = sysGlobal.bet_base_price;
	}
	else
	{
		sysGlobal.inserted_coins = 0;
	}
	fnSetMultiplier();
	sysGlobal.inserted_special_coins = 0;
	sysGlobal.bet_level = 0;
	sysEvent.combo = 0;
	sysEvent.current_state = EventFlag.Idle;
	sysEvent.bonus_multiplier = 0;
	GAME_STATE = GameState.Idle;
	
	//Reset all flags except Glorp effects
	for(var i = 0; i < array_length(sysGlobal.flags); i++)
	{
		if(!array_contains(flags_to_keep_on, i))
		{
			if(sysGlobal.flags[i]) 
			{
				sysGlobal.flags[i] = false;
			}
		}
	}
	
	//Manage Glorp effects
	for(var i = 0; i < array_length(objGlorpEffectBar.active_effects); i++)
	{
		if(objGlorpEffectBar.active_effects[i] != undefined)
		{
			if(objGlorpEffectBar.active_effects[i].glorpEffectId != GlorpEffects.Undiscovered)
			{
				objGlorpEffectBar.active_effects[i].glorpEffectDuration--;
				
				if(objGlorpEffectBar.active_effects[i].glorpEffectDuration <= 0)
				{
					var effect_id = objGlorpEffectBar.active_effects[i].glorpEffectId;
					var wheels = objGlorpEffectBar.active_effects[i].glorpEffectWheel;
					var mode = objGlorpEffectBar.active_effects[i].glorpEffectInstance.mode;
					
					instance_destroy(objGlorpEffectBar.active_effects[i].glorpEffectInstance)
					objGlorpEffectBar.active_effects[i] = undefined;
					for(var j = 0; j < array_length(objGlorpEffectBar.active_effects_id); j++)
					{
						if(objGlorpEffectBar.active_effects_id[j] == effect_id)
						{
							array_delete(objGlorpEffectBar.active_effects_id, j, 1);
							break;
						}
					}
					//Disable effect
					fnDisableGlorpEffect(effect_id, wheels, mode);
				}
				else
				{
					//Update name & description
					objGlorpEffectBar.active_effects[i].glorpEffectInstance.alarm[0] = 1;
				}
			}
		}
	}
}