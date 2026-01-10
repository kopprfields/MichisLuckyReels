/// @description Spawn coin
if(is_glorp)
{
	instance_create_layer(mouse_x, mouse_y, "UI", objGlorpCoin, {parent: id});
	sysGlobal.owned_special_coins--;
}
else
{
	instance_create_layer(mouse_x, mouse_y, "UI", objCoin, {parent: id});
	sysGlobal.owned_coins--;
}