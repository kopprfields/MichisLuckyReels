/// @description Mask
if(GAME_STATE == GameState.Recap || GAME_STATE == GameState.Paused)
{
	draw_sprite_ext(sprPauseMask, 0, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, 0, c_white, 0.8);
}