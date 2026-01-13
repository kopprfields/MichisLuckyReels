/// @description Spawn coin
if(is_glorp)
{
	instance_create_layer(mouse_x, mouse_y, "UI_Top", objGlorpCoin, {parent: id});
	sysGlobal.owned_special_coins--;
}
else
{
	instance_create_layer(mouse_x, mouse_y, "UI_Top", objCoin, {parent: id});
	sysGlobal.owned_coins--;
}