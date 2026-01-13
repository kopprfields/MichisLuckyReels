/// @description Manage states
event_inherited();

if(sysGlobal.inserted_coins+sysGlobal.inserted_special_coins <= 0 || GAME_STATE != GameState.Idle)
{
	current_state = ButtonState.Disabled;
}
else
{
	if(current_state == ButtonState.Disabled)
	{
		current_state = ButtonState.Idle;
	}
}