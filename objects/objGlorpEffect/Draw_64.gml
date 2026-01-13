/// @description Tooltip
if(tooltip && GAME_STATE != GameState.Paused)
{
	var text;
	switch(glorp_effect_id)
	{
		case 1:
			text = "This Glorp effect has been activated!";
			break;
		default:
			text = "This Glorp effect has not been activated yet.";
			break;
	}
	
	draw_text(mouse_x-string_width(text)/2, mouse_y+10, text);
}