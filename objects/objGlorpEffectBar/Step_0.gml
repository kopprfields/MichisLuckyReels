/// @description Position
if(GAME_STATE != GameState.Idle) exit;

if(active_effects[0] != undefined || active_effects[1] != undefined || active_effects[2] != undefined)
{
	//deploy
	if(y < deployed_position)
	{
		y = retracted_position + distance*animcurve_channel_evaluate(CURVE_CUBIC, current_animation_step)
		current_animation_step += animation_step;
	}
	else
	{
		y = deployed_position;
		current_animation_step = 0;
	}
}
else
{
	//retract
	if(y > retracted_position)
	{
		y = deployed_position - distance*animcurve_channel_evaluate(CURVE_CUBIC, current_animation_step)
		current_animation_step += animation_step;
	}
	else
	{
		y = retracted_position;
		current_animation_step = 0;
	}
}