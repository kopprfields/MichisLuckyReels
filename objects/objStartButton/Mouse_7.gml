/// @description Start the wheels
if(!activated) exit;

if(GAME_STATE == GameState.Idle && sysGlobal.inserted_coins+sysGlobal.inserted_special_coins > 0)
{
	//Roll new Glorp effects
	fnActivateGlorpEffects();
	GAME_STATE = GameState.WheelStarting;
}