/// @description Set state to idle
if(current_state == ButtonState.Pressed)
{
	current_state = ButtonState.Idle;
	activated = false;
}