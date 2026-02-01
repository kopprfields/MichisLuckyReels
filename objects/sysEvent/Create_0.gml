/// @description Initialization
current_state = EventFlag.Idle;
current_substate = EventFlag.Idle;
event_finished = true;
combo = 0;
gained_coins = 0;
gained_special_coins = 0;
bonus_multiplier = 0;

flags_to_keep_on = [
	EventFlag.Hah,
	EventFlag.FreeBits,
	EventFlag.GlorpTax,
	EventFlag.CorpaClap
]

//Always turn back to false in Alarm[0]
draw_hah = false;
draw_free_bits = false;
draw_glorp_tax = false;
draw_ferro = false;
draw_code_michi = false;