/// @description
draw_sprite(sprWheelRow, inserted_coins, SCREEN_WIDTH/2-2*sprite_get_width(sprWheel)-20, SCREEN_HEIGHT/3);
draw_sprite_ext(sprWheelRow, inserted_coins, SCREEN_WIDTH/2+2*sprite_get_width(sprWheel)+20, SCREEN_HEIGHT/3, -1, 1, 0, c_white, 1);

if(inserted_coins > 0)
{
	draw_text(20, 20, "Multiplier: " + string(multiplier));
}
else
{
	draw_text(20, 20, "Insert coin(s)");
}