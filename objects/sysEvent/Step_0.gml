/// @description State management
if(GAME_STATE != GameState.Recap || current_state == EventFlag.Idle) exit;

//To rework: 
//	if no score, just play the TooBad animation without pausing
//	if score, display score calculation first, then play potential event (TTS, Jared, Ferro), then apply multiplier, then end turn
//	if Ferro event activated, increase Ferro level by 1

switch(current_state)
{
	case(EventFlag.GigaJackpot):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.TooBad] = false;
			sysGlobal.flags[EventFlag.GigaJackpot] = false;
			if(sysGlobal.flags[EventFlag.Ferro])
			{
				fnActivateEvent(EventFlag.Ferro, 1*room_speed);
			}
			if(sysGlobal.flags[EventFlag.Collab])
			{
				fnActivateEvent(EventFlag.Collab, 1*room_speed);
			}
			if(sysGlobal.flags[EventFlag.SuperJared])
			{
				fnActivateEvent(EventFlag.SuperJared, 1*room_speed);
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed);
			}
			else
			{
				fnEndTurn();
			}
		}
		break;
	case(EventFlag.Collab):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.Collab] = false;
			if(sysGlobal.flags[EventFlag.Ferro])
			{
				fnActivateEvent(EventFlag.Ferro, 1*room_speed);
			}
			if(sysGlobal.flags[EventFlag.SuperJared])
			{
				fnActivateEvent(EventFlag.SuperJared, 1*room_speed);
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed);
			}
			else
			{
				fnEndTurn();
			}
		}
		break;
	case(EventFlag.Ferro):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.TooBad] = false;
			sysGlobal.flags[EventFlag.Ferro] = false;
			sysGlobal.ferro_level++;
			if(sysGlobal.flags[EventFlag.SuperJared])
			{
				fnActivateEvent(EventFlag.SuperJared, 1*room_speed);
			}
			else if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed);
			}
			else
			{
				fnEndTurn();
			}
		}
		break;
	case(EventFlag.SuperJared):
		if(event_finished)
		{
			sysGlobal.flags[EventFlag.SuperJared] = false;
			if(sysGlobal.flags[EventFlag.Score])
			{
				fnActivateEvent(EventFlag.Score, 1*room_speed);
			}
			else
			{
				fnEndTurn();
			}
		}
		break;
	case(EventFlag.Score):
		if(event_finished)
		{
			sysGlobal.owned_coins += sysGlobal.gained_coins;
			fnEndTurn();
		}
		break;
	case(EventFlag.TooBad):
		if(event_finished)
		{
			fnEndTurn();
		}
		break;
	default:
		fnEndTurn();
		break;
}