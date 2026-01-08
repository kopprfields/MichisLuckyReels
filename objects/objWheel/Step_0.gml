/// @description State management
switch(current_state)
{
	case WheelState.Idle:
		break;
	case WheelState.Starting:
		if(current_position < distance)
		{
			var curve_index = 0 
			if(wheel_speed < 0.2) curve_index = 1 
			current_position = animcurve_channel_evaluate(animcurve_get_channel(acWheel, curve_index), current_animation_step)*distance;
			current_animation_step+=(2/distance);
		}
		else
		{
			if(current_index > 0) current_index--;
			else current_index = ds_list_size(wheel_values)-1;
			current_animation_step = 0;
			current_position = 0;
			//If wheel is not in slow mode, shuffle at start
			if(wheel_speed > 0.2) 
				ds_list_shuffle(wheel_values);
			current_state = WheelState.Turning;
			alarm[2] = (10 + wheel_number)*room_speed;
		}
		break;
	case WheelState.Turning:
		if(current_position < distance)
		{
			current_position += wheel_speed*room_speed;
		}
		else
		{
			current_index--;
			if(current_index < 0)
			{
				current_index = ds_list_size(wheel_values)-1;
			}
			current_position = 0;
		}
		break;
	case WheelState.Stopping:
		if(current_position > 0)
		{
			current_position = animcurve_channel_evaluate(animcurve_get_channel(acWheel, 2), current_animation_step)*distance;
			current_animation_step+=1/distance;
		}
		else
		{
			current_position = 0;
			current_animation_step = 0;
			current_state = WheelState.Stopped;
			//Save result in result grid
			fnSetResultSymbols();
		}
		break;
}