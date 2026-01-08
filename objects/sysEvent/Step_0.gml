/// @description State management
if(GAME_STATE != GameState.Recap) exit;

switch(current_state)
{
	case(EventFlag.GigaJackpot):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.TooBad] = false;
			sysGlobal.flags[EventFlag.GigaJackpot] = false;
			if(sysGlobal.flags[EventFlag.Collab])
			{
				fnActivateEvent(EventFlag.Collab, 1*room_speed)
			}
			if(sysGlobal.flags[EventFlag.Jared])
			{
				fnActivateEvent(EventFlag.Jared, 1*room_speed)
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed)
			}
			else
			{
				sysGlobal.inserted_coins = 0;
				sysGlobal.multiplier = 3;
				combo = 0;
				current_state = EventFlag.Idle;
				GAME_STATE = GameState.Idle;
			}
		}
		break;
	case(EventFlag.Collab):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.Collab] = false;
			if(sysGlobal.flags[EventFlag.Whimsy])
			{
				fnActivateEvent(EventFlag.Whimsy, 1*room_speed)
			}
			if(sysGlobal.flags[EventFlag.Jared])
			{
				fnActivateEvent(EventFlag.Jared, 1*room_speed)
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed)
			}
			else
			{
				sysGlobal.inserted_coins = 0;
				sysGlobal.multiplier = 3;
				combo = 0;
				current_state = EventFlag.Idle;
				GAME_STATE = GameState.Idle;
			}
		}
		break;
	case(EventFlag.Whimsy):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.TooBad] = false;
			sysGlobal.flags[EventFlag.Whimsy] = false;
			if(sysGlobal.flags[EventFlag.Jared])
			{
				fnActivateEvent(EventFlag.Jared, 1*room_speed)
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed)
			}
			else
			{
				sysGlobal.inserted_coins = 0;
				sysGlobal.multiplier = 3;
				combo = 0;
				current_state = EventFlag.Idle;
				GAME_STATE = GameState.Idle;
			}
		}
		break;
	case(EventFlag.Jared):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.Jared] = false;
			if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed)
			}
			else
			{
				sysGlobal.inserted_coins = 0;
				sysGlobal.multiplier = 3;
				combo = 0;
				current_state = EventFlag.Idle;
				GAME_STATE = GameState.Idle;
			}
		}
		break;
	case(EventFlag.Score):
		if(event_finished)
		{
			sysGlobal.owned_coins += sysGlobal.gained_coins;
			sysGlobal.inserted_coins = 0;
			sysGlobal.multiplier = 3;
			sysGlobal.flags[EventFlag.Score] = false;
			current_state = EventFlag.Idle;
			GAME_STATE = GameState.Idle;
			combo = 0;
		}
		break;
	case(EventFlag.TooBad):
		if(event_finished)
		{
			sysGlobal.inserted_coins = 0;
			sysGlobal.multiplier = 3;
			sysGlobal.flags[EventFlag.TooBad] = false;
			current_state = EventFlag.Idle;
			GAME_STATE = GameState.Idle;
			combo = 0;
		}
		break;
}