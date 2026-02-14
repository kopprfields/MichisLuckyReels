/// @description Tooltip
if(tooltip && GAME_STATE != GameState.Paused && GAME_STATE != GameState.Recap)
{
	draw_sprite_stretched(sprGlorpFrame, 0, mouse_x-string_width(description_max_width)/2, mouse_y+description_offset, description_max_width+2*description_padding, description_height+2*description_padding+30);
	draw_text(mouse_x-string_width(description_max_width)/2+description_padding, mouse_y+8+description_offset, glorp_effect_name);
	draw_set_font(fntGlorp);
	draw_text_ext(mouse_x-string_width(description_max_width)/2+description_padding, mouse_y+30+description_offset, glorp_effect_description, string_height("a"), description_max_width);
	draw_set_font(fntDefault);
}