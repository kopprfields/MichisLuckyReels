/// @description End score calculation and start event handling
switch(current_substate)
{
	case(EventFlag.Hah):
		draw_hah = true;
		gained_coins -= 3;
		if(sysGlobal.flags[EventFlag.Ferro])
		{
			current_substate = EventFlag.Ferro;
		}
		else if(sysGlobal.flags[EventFlag.SuperJared])
		{
			current_substate = EventFlag.SuperJared;
		}
		else if(sysGlobal.flags[EventFlag.Fii])
		{
			current_substate = EventFlag.Fii;
		}
		else if(sysGlobal.flags[EventFlag.Mita])
		{
			current_substate = EventFlag.Mita;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.Ferro):
		//Draw Ferro animation: TO DO
		if(sysGlobal.flags[EventFlag.Mita])
		{
			current_substate = EventFlag.Mita;
		}
		else if(sysGlobal.flags[EventFlag.Fii])
		{
			current_substate = EventFlag.Fii;
		}
		else if(sysGlobal.flags[EventFlag.SuperJared])
		{
			current_substate = EventFlag.SuperJared;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.Mita):
		//Draw Mita animation: TO DO
		sysGlobal.flags[EventFlag.Mita] = false;
		current_substate = EventFlag.Idle;
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.Fii):
		//Draw Fii animation: TO DO
		sysGlobal.flags[EventFlag.Fii] = false;
		current_substate = EventFlag.Idle;
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.SuperJared):
		//Draw Super Jaredification Beam animation: TO DO
		sysGlobal.flags[EventFlag.SuperJared] = false;
		current_substate = EventFlag.Idle;
		alarm[2] = 0.5*room_speed;
		break;
	default: //End event
		alarm[0] = 2*room_speed;
		break;
}
