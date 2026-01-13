current_state = WheelState.Idle;
current_index = 5;

distance = sprite_height/5;
current_position = 0;
current_animation_step = 0;

//Create wheel button
child_button = instance_create_layer(x, y+sprite_height/2+10, "UI_Bottom", objButtonWheel, {parent_wheel: id});

//Populate the wheel with symbols, then shuffle them
wheel_values = ds_list_create();
fnInitializeWheel();