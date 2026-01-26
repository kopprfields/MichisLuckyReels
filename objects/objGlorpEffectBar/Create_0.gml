active_effects = array_create(3, undefined);
retracted_position = -sprite_height;
deployed_position = 0;
distance = abs(retracted_position-deployed_position);
animation_step = 0.05;
current_animation_step = 0;

coin_position = x-73;
coin_offset = 73;

active_effects_id = array_create(0);