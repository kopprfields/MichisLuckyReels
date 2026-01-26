/// @description State management
switch(GAME_STATE)
{
	case(GameState.WheelStarting):
		//Start all wheels
		//with(objWheel)
		for(var i = 0; i < array_length(wheels); i++)
		{
			wheels[i].alarm[0] = 1+(+i/5)*room_speed;
			//wheels[i].current_state = WheelState.Starting;
		}
		GAME_STATE = GameState.WheelTurning;
		break;
		
	case(GameState.WheelTurning):
		//Check if all wheels are still turning
		var stop = true;
		for(var i = 0; i < array_length(wheels); i++)
		{
			if(wheels[i].current_state != WheelState.Stopped)
			{
				stop = false;
				break;
			}
		}
		//If all wheels stopped, switch to Idle
		if(stop)
		{
			with(objWheel)
			{
				current_state = WheelState.Idle;
			}
			
			results = fnProcessResult(inserted_coins+inserted_special_coins);
			
			if(array_length(results) == 0)
			{
				flags[EventFlag.TooBad] = true;
			}
			else
			{
				flags[EventFlag.Score] = true;
			}
			
			if(flags[EventFlag.Score])
				fnActivateEvent(EventFlag.Score, 1*room_speed);
			else if(flags[EventFlag.TooBad])
				fnActivateEvent(EventFlag.TooBad, 1*room_speed);
			else
				fnActivateEvent(EventFlag.Idle, 1);
			
			GAME_STATE = GameState.Recap;
		}
		break;
}
