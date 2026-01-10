/// @description Initialization
symbols_list = array_create(Symbols.SIZE, "buhh");
array_set(symbols_list, Symbols.Heart, new Symbol(Symbols.Heart, sprHeart, 1, Symbols.Heart));
array_set(symbols_list, Symbols.Ring, new Symbol(Symbols.Ring, sprRing, 1, Symbols.Ring));
array_set(symbols_list, Symbols.Spoon, new Symbol(Symbols.Spoon, sprSpoon, 2, Symbols.Spoon));
array_set(symbols_list, Symbols.Jared, new Symbol(Symbols.Jared, sprJared, 3, Symbols.Jared));
array_set(symbols_list, Symbols.Fii, new Symbol(Symbols.Fii, sprJaredFii, 3, Symbols.Jared));
array_set(symbols_list, Symbols.Mita, new Symbol(Symbols.Mita, sprJaredMita, 3, Symbols.Jared));
array_set(symbols_list, Symbols.Michi, new Symbol(Symbols.Michi, sprMichi, 5, Symbols.Michi));
array_set(symbols_list, Symbols.Whimsy, new Symbol(Symbols.Whimsy, sprWhimsy, 0, Symbols.Whimsy));

flags = array_create(EventFlag.SIZE, false);

result_grid = ds_grid_create(3, 3);

wheels = [
	instance_create_layer(SCREEN_WIDTH/2-sprite_get_width(sprWheel)-10, SCREEN_HEIGHT/3, "Instances", objWheel, {wheel_number: 0, nb_jared: 4, nb_mita: 2}),
	instance_create_layer(SCREEN_WIDTH/2, SCREEN_HEIGHT/3, "Instances", objWheel, {wheel_number: 1}),
	instance_create_layer(SCREEN_WIDTH/2+sprite_get_width(sprWheel)+10, SCREEN_HEIGHT/3, "Instances", objWheel, {wheel_number: 2, nb_jared: 4, nb_fii: 2})
];

inserted_coins = 0;
results = array_create(0);
gained_coins = 0;
owned_coins = 5;
owned_special_coins = 1;
multiplier = 3;

instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+40, 175, "UI", objAddCoin);
instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+40, 275, "UI", objStartButton);
instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+40, 375, "UI", objRemoveCoin);

instance_create_layer(0, 0, "Instances", objCurrencyStack);
instance_create_layer(0, 0, "Instances", objGlorpCurrencyStack);