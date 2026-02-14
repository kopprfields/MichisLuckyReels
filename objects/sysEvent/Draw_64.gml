/// @description Draw event
if(GAME_STATE != GameState.Recap) exit;

switch(current_state)
{
	case(EventFlag.GigaJackpot):
		draw_sprite(evtScore, 0, SCREEN_WIDTH/2, 100);
		break;
	case(EventFlag.Collab):
		break;
	case(EventFlag.Whimsy):
		draw_sprite(sprEvent, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT/3);
		draw_sprite(evtWhimsy, 0, SCREEN_WIDTH/2, 100);
		break;
	case(EventFlag.SuperJared):
		draw_sprite(sprEvent, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT/3);
		draw_sprite(evtMita, 0, SCREEN_WIDTH/2, 100);
		break;
	case(EventFlag.Score):
		draw_sprite(evtScore, 0, SCREEN_WIDTH/2, 100);
		draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT-100, "TOTAL: " + string(floor(max(gained_coins, 0)*(sysGlobal.multiplier+bonus_multiplier))) + " coins");
		if(combo >=0)
		{
			for(var i = 0; i < clamp(combo, 0, array_length(sysGlobal.results)); i++)
			{
				for(var j = 0; j < array_length(sysGlobal.results[i].symbols); j++)
				{
					draw_sprite_ext(sysGlobal.results[i].symbols[j].symbolSprite, 0, SCREEN_WIDTH/4+j*20, 150+i*28, 0.5, 0.5, 0, c_white, 1);
				}
			}
			draw_text(3*SCREEN_WIDTH/5, 100, "+" + string(gained_coins) + " x" + string(sysGlobal.multiplier+bonus_multiplier) + " coins");
			draw_text(3*SCREEN_WIDTH/5, 120, "+" + string(max(gained_special_coins, 0)) + " glorp coins");
		}
		
		var event_count = 1;
		if(draw_hah)
		{
			draw_text(3*SCREEN_WIDTH/5, 120+20*event_count, "HAH! -3 coins");
			event_count++;
		}
		if(draw_free_bits)
		{
			draw_text(3*SCREEN_WIDTH/5, 120+20*event_count, "Free bits! +5 coins");
			event_count++;
		}
		if(draw_glorp_tax)
		{
			draw_text(3*SCREEN_WIDTH/5, 120+20*event_count, "Glorp! -50% coins");
			event_count++;
		}
		if(draw_code_michi)
		{
			draw_text(3*SCREEN_WIDTH/5, 120+20*event_count, "Michi! +25% coins");
			event_count++;
		}
		break;
	case(EventFlag.TooBad):
		draw_sprite(evtTooBad, 0, SCREEN_WIDTH/2, 100);
		break;
}