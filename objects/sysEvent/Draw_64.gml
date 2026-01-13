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
		if(combo >=0)
		{
			gained_coins = 0;
			gained_special_coins = 0;
			for(var i = 0; i < clamp(combo, 0, array_length(sysGlobal.results)); i++)
			{
				for(var j = 0; j < array_length(sysGlobal.results[i].symbols); j++)
				{
					draw_sprite_ext(sysGlobal.results[i].symbols[j].symbolSprite, 0, SCREEN_WIDTH/4+j*20, 150+i*28, 0.5, 0.5, 0, c_white, 1);
					gained_coins += sysGlobal.results[i].symbols[j].symbolScore;
				}
				gained_special_coins += array_count(sysGlobal.results[i].symbols, sysGlobal.symbols_list[Symbols.Glorp]);
			}
			draw_text(3*SCREEN_WIDTH/4, 100, "+" + string(gained_coins) + " x" + string(sysGlobal.multiplier) + " coins");
			draw_text(3*SCREEN_WIDTH/4, 120, "+" + string(gained_special_coins) + " glorp coins");
		}
		break;
	case(EventFlag.TooBad):
		draw_sprite(evtTooBad, 0, SCREEN_WIDTH/2, 100);
		break;
}