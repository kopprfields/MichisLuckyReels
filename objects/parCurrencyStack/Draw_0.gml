var amount = is_glorp ? sysGlobal.owned_special_coins : sysGlobal.owned_coins;

if(amount > 0)
{
	draw_sprite(sprite_index, clamp(amount, 1, 8), x, y);
	draw_text(x+sprite_width/3, y+sprite_height/3, "x"+string(amount));
}