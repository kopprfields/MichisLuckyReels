/// @description Start the wheels
if(GAME_STATE == GameState.Idle && sysGlobal.inserted_coins > 0)
{
	GAME_STATE = GameState.WheelStarting;
}