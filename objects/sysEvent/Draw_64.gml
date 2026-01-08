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
	case(EventFlag.Jared):
		draw_sprite(sprEvent, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT/3);
		draw_sprite(evtMita, 0, SCREEN_WIDTH/2, 100);
		break;
	case(EventFlag.Score):
		draw_sprite(evtScore, 0, SCREEN_WIDTH/2, 100);
		if(combo >=0)
		{
			for(var i = 0; i < clamp(combo, 0, array_length(sysGlobal.results)); i++)
			{
				draw_sprite(sysGlobal.results[i].symbol.symbolSprite, 0, SCREEN_WIDTH/4, 550+i*56);
				draw_text(SCREEN_WIDTH/4+64, 550+i*56, "x" + string(sysGlobal.results[i].number));
				draw_text(SCREEN_WIDTH/4+128, 550+i*56, string(sysGlobal.results[i].symbol.symbolScore*sysGlobal.results[i].number) + " x" + string(sysGlobal.multiplier));
			}
		}
		break;
	case(EventFlag.TooBad):
		draw_sprite(evtTooBad, 0, SCREEN_WIDTH/2, 100);
		break;
}