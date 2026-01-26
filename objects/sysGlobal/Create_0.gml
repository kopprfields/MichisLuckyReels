/// @description Initialization
//fnInitializeSymbols();
fnInitializeGlorpEffects();

flags = array_create(EventFlag.SIZE, false);

result_grid = ds_grid_create(3, 3);

wheels = [
	instance_create_layer(SCREEN_WIDTH/2-sprite_get_width(sprWheel)-10, SCREEN_HEIGHT/2-50, "Instances", objWheel, {wheel_number: 0, nb_jared: 4, nb_mita: 2}),
	instance_create_layer(SCREEN_WIDTH/2, SCREEN_HEIGHT/2-50, "Instances", objWheel, {wheel_number: 1}),
	instance_create_layer(SCREEN_WIDTH/2+sprite_get_width(sprWheel)+10, SCREEN_HEIGHT/2-50, "Instances", objWheel, {wheel_number: 2, nb_jared: 4, nb_fii: 2})
];

inserted_coins = 0;
inserted_special_coins = 0;
cumuled_gained_coins = 0;
ferro_level = 1;
gained_coins = 0;
owned_coins = 20;
owned_special_coins = 5;
multiplier = 3;
whimsy_meter = 0;
whimsy_mode = false;
results = array_create(0);

instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+20, 200, "UI_Bottom", objCoinSlot);
instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+sprite_get_width(sprCoinSlot)+sprite_get_width(sprButtonUp), 175, "UI_Bottom", objAddCoin);
instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+sprite_get_width(sprCoinSlot)+sprite_get_width(sprButtonUp), 215, "UI_Bottom", objRemoveCoin);
instance_create_layer(SCREEN_WIDTH/2+3*sprite_get_width(sprWheel)+40, 250, "UI_Bottom", objStartButton);
instance_create_layer(SCREEN_WIDTH/2, -sprite_get_height(sprGlorpEffects), "UI_Bottom", objGlorpEffectBar);

instance_create_layer(0, 0, "UI_Middle", objCurrencyStack);
instance_create_layer(0, 0, "UI_Middle", objGlorpCurrencyStack);