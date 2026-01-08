current_state = WheelState.Idle;
current_index = 5;

distance = sprite_height/5;
current_position = 0;
current_animation_step = 0;

//Create wheel button
child_button = instance_create_layer(x, y+sprite_height/2+10, "UI", objButtonWheel, {parent_wheel: id});

//Populate the wheel with symbols, then shuffle them
wheel_values = ds_list_create();
repeat(nb_heart)
{
	ds_list_add(wheel_values, HEART);
}
repeat(nb_ring)
{
	ds_list_add(wheel_values, RING);
}
repeat(nb_spoon)
{
	ds_list_add(wheel_values, SPOON);
}
repeat(nb_jared)
{
	ds_list_add(wheel_values, JARED);
}
repeat(nb_fii)
{
	ds_list_add(wheel_values, FII);
}
repeat(nb_mita)
{
	ds_list_add(wheel_values, MITA);
}
repeat(nb_michi)
{
	ds_list_add(wheel_values, MICHI);
}
repeat(nb_whimsy)
{
	ds_list_add(wheel_values, WHIMSY);
}
ds_list_shuffle(wheel_values);