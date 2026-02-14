/// @description End score calculation and start event handling
switch(current_substate)
{
	case(EventFlag.Hah):
		draw_hah = true;
		gained_coins -= 3;
		if(sysGlobal.flags[EventFlag.FreeBits])
		{
			current_substate = EventFlag.FreeBits;
		}
		else if(sysGlobal.flags[EventFlag.GlorpTax])
		{
			current_substate = EventFlag.GlorpTax;
		}
		else if(sysGlobal.flags[EventFlag.CodeMichi])
		{
			current_substate = EventFlag.CodeMichi;
		}
		else if(sysGlobal.flags[EventFlag.Ferro])
		{
			current_substate = EventFlag.Ferro;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.FreeBits):
		draw_free_bits = true;
		gained_coins += 5;
		if(sysGlobal.flags[EventFlag.GlorpTax])
		{
			current_substate = EventFlag.GlorpTax;
		}
		else if(sysGlobal.flags[EventFlag.CodeMichi])
		{
			current_substate = EventFlag.CodeMichi;
		}
		else if(sysGlobal.flags[EventFlag.Ferro])
		{
			current_substate = EventFlag.Ferro;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.GlorpTax):
		draw_glorp_tax = true;
		bonus_multiplier -= sysGlobal.multiplier/2;
		
		if(sysGlobal.flags[EventFlag.CodeMichi])
		{
			current_substate = EventFlag.CodeMichi;
		}
		else if(sysGlobal.flags[EventFlag.Ferro])
		{
			current_substate = EventFlag.Ferro;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.CodeMichi):
		draw_code_michi = true;
		bonus_multiplier += sysGlobal.multiplier/4;
		
		if(sysGlobal.flags[EventFlag.Ferro])
		{
			current_substate = EventFlag.Ferro;
		}
		else
		{
			current_substate = EventFlag.Idle;
		}
		alarm[2] = 0.5*room_speed;
		break;
	case(EventFlag.Ferro):
		//Draw Ferro animation: TO DO
		draw_ferro = true;
		current_substate = EventFlag.Idle;
		sysGlobal.ferro_level++;
		alarm[2] = 0.5*room_speed;
		break;
	/*case(EventFlag.Mita):
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
		break;*/
	default: //End event
		alarm[0] = 2*room_speed;
		break;
}
