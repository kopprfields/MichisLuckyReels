/// @description Start the wheels
if(!activated) exit;

if(GAME_STATE == GameState.Idle && sysGlobal.inserted_coins+sysGlobal.inserted_special_coins > 0)
{
	//Roll new Glorp effects
	fnActivateGlorpEffects();
	
	//Check for ferro activation
	if(sysGlobal.cumuled_gained_coins >= sysGlobal.ferro_level*100)
	{
		//Check if Ferro symbol exists
		var activate_ferro_event = true;
		for(var i = 0; i < 2; i++)
		{
			if(sysGlobal.wheels[i].nb_ferro > 0)
			{
				activate_ferro_event = false;
				break;
			}
		}
		
		//If Ferro symbol does not exist, select a suitable wheel and set its nb_ferro to 1
		if(activate_ferro_event)
		{
			for(var i = 0; i < 2; i++)
			{
				if(sysGlobal.wheels[i].wheel_speed > 0.2)
				{
					sysGlobal.wheels[i].nb_ferro = 1;
					sysGlobal.wheels[i].nb_glorp = 0;
					sysGlobal.wheels[i].nb_tts = 0;
					break;
				}
			}
		}
	}
	else
	{
		for(var i = 0; i < 2; i++)
		{
			if(sysGlobal.wheels[i].nb_ferro > 0)
			{
				sysGlobal.wheels[i].nb_ferro = 0;
				sysGlobal.wheels[i].nb_glorp = 1;
			}
		}
	}
	GAME_STATE = GameState.WheelStarting;
}