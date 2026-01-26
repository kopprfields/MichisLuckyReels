/// @description Tooltip
if(tooltip && GAME_STATE != GameState.Paused)
{
	draw_text(mouse_x-string_width(glorp_effect_name)/2, mouse_y+10, glorp_effect_name);
	draw_text(mouse_x-string_width(glorp_effect_description)/2, mouse_y+25, glorp_effect_description);
}