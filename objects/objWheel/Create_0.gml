current_state = WheelState.Idle;
current_index = 5;

//Glorp effects
dulled_whimsy = false;
assemble = false;
michimitosis = false;
i_hate_you = false;
long_long_man = false;

distance = sprite_height/5;
current_position = 0;
current_animation_step = 0;

//Create wheel button
child_button = instance_create_layer(x, y+sprite_height/2+10, "UI_Bottom", objButtonWheel, {parent_wheel: id});

symbols_levels = fnInitializeSymbols();

//Populate the wheel with symbols, then shuffle them
wheel_values = ds_list_create();
wheel_values_tmp = ds_list_create();
wheel_values_tmp_count = 5;
fnInitializeWheel();