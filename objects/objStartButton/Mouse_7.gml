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
		if(sysGlobal.wheels[1].nb_ferro <= 0 && sysGlobal.wheels[1].wheel_speed > 0.2)
		{
			sysGlobal.wheels[1].nb_ferro = 1;
			sysGlobal.wheels[1].nb_glorp = 0;
			sysGlobal.wheels[1].nb_tts = 0;
		}
	}
	else
	{
		if(sysGlobal.wheels[1].nb_ferro > 0)
		{
			sysGlobal.wheels[1].nb_ferro = 0;
			sysGlobal.wheels[1].nb_glorp = 1;
		}
	}
	GAME_STATE = GameState.WheelStarting;
}