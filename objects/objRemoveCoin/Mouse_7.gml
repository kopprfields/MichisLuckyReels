/// @description Remove coin
if(!activated) exit;

activated = false;

if(GAME_STATE == GameState.Idle)
{
	//Remove special coins in priority
	if(sysGlobal.inserted_special_coins > 0)
	{
		sysGlobal.inserted_special_coins -= sysGlobal.special_coin_value;
		sysGlobal.owned_special_coins++;
		if(array_length(objGlorpEffectBar.active_effects) > 0)
		{
			for(var i = array_length(objGlorpEffectBar.active_effects)-1; i >= 0 ; i--)
			{
				if(objGlorpEffectBar.active_effects[i] != undefined)
				{
					if(objGlorpEffectBar.active_effects[i].glorpEffectId = GlorpEffects.Undiscovered)
					{
						instance_destroy(objGlorpEffectBar.active_effects[i].glorpEffectInstance);
						objGlorpEffectBar.active_effects[i] = undefined;
						break;
					}
				}
			}
		}
	}
	else
	{
		sysGlobal.inserted_coins--;
		sysGlobal.owned_coins++;
	}
	
	fnSetMultiplier();
}