/// @description Draw symbols
var indexes = fnGetWheelIndexes(id, current_index);

//If count > 0, use the temp list to smoothly transition through the shuffle
var symbolsToDisplay;
if(wheel_values_tmp_count > 0)
{
	symbolsToDisplay = wheel_values_tmp;
}
else
{
	symbolsToDisplay = wheel_values;
}

draw_self();
if(ds_list_size(wheel_values) > 0)
{
	draw_sprite(symbolsToDisplay[| indexes[0]].symbolSprite, 0, x, y-2*sprite_height/5+current_position);
	draw_sprite(symbolsToDisplay[| indexes[1]].symbolSprite, 0, x, y-sprite_height/5+current_position);
	draw_sprite(symbolsToDisplay[| indexes[2]].symbolSprite, 0, x, y+current_position);
	draw_sprite(symbolsToDisplay[| indexes[3]].symbolSprite, 0, x, y+sprite_height/5+current_position);
	draw_sprite(symbolsToDisplay[| indexes[4]].symbolSprite, 0, x, y+2*sprite_height/5+current_position);
}

draw_sprite(sprWheelShadow, 0, x, y-2*sprite_height/5);
draw_sprite_ext(sprWheelShadow, 0, x, y+2*sprite_height/5, 1, -1, 0, c_white, 1);