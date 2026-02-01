/// @description Advance score calculation
combo++

if(combo > array_length(sysGlobal.results))
{
	if(sysGlobal.flags[EventFlag.Hah])
	{
		current_substate = EventFlag.Hah;
	}
	else if(sysGlobal.flags[EventFlag.FreeBits])
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
	/*else if(sysGlobal.flags[EventFlag.SuperJared])
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
	}*/
	else
	{
		current_substate = EventFlag.Idle;
	}
	
	alarm[2] = 0.5*room_speed;
}
else
{
	switch(combo)
	{
		case 0:
			break;
		case 1:
			audio_play_sound(sfxCombo1, 1, false);
			bonus_multiplier = 0;
			break;
		case 2:
			audio_play_sound(sfxCombo2, 1, false);
			bonus_multiplier += 0.05;
			break;
		case 3:
			audio_play_sound(sfxCombo3, 1, false);
			bonus_multiplier += 0.5;
			break;
		case 4:
			audio_play_sound(sfxCombo4, 1, false);
			bonus_multiplier += 0.1;
			break;
		case 5:
			audio_play_sound(sfxCombo5, 1, false);
			bonus_multiplier += 0.3;
			break;
		default:
			audio_play_sound(sfxCombo6, 1, false);
			bonus_multiplier += 0.5;
			break;
	}
	alarm[1] = 0.5*room_speed;
}