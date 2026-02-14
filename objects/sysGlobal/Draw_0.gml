/// @description
draw_sprite(sprWheelRow, bet_level, SCREEN_WIDTH/2-2*sprite_get_width(sprWheel)-20, SCREEN_HEIGHT/2-50);
draw_sprite_ext(sprWheelRow, bet_level, SCREEN_WIDTH/2+2*sprite_get_width(sprWheel)+20, SCREEN_HEIGHT/2-50, -1, 1, 0, c_white, 1);

if(bet_level > 0)
{
	draw_text(20, 20, "Multiplier: " + string(multiplier));
}
else
{
	draw_text(20, 20, "Insert coin(s)");
}

draw_text(20, 40, "Current bet: " + string(inserted_coins+inserted_special_coins));

var delta = (inserted_coins+inserted_special_coins) - (bet_base_price + 2*bet_increment);
if(delta > 0)
{
	draw_text(20, 60, "Over-limit: " + string(delta) + " coins");	
}