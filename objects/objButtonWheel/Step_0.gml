/// @description Manage states
event_inherited();

if(GAME_STATE != GameState.WheelTurning || parent_wheel.current_state != WheelState.Turning)
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