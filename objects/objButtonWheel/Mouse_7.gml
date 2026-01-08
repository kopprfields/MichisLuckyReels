/// @description Execute action
event_inherited();

if(GAME_STATE == GameState.WheelTurning && parent_wheel.current_state == WheelState.Turning)
{
	//parent_wheel.current_animation_step = parent_wheel.current_position/parent_wheel.distance;
	parent_wheel.current_state = WheelState.Stopping;
	parent_wheel.alarm[2] = -1;
}