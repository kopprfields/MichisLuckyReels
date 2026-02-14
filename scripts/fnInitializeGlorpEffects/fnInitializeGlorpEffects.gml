// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeGlorpEffects(){
	glorp_effects_meta = array_create(GlorpEffects.SIZE, "buhh");
	array_set(glorp_effects_meta, GlorpEffects.Undiscovered, new GlorpMeta(GlorpEffects.Undiscovered, ["Plain Glorp Coin"], ["A normal Glorp coin. Spin the wheel to discover its effects!"]));
	array_set(glorp_effects_meta, GlorpEffects.FeelsLagMan, new GlorpMeta(GlorpEffects.FeelsLagMan, ["Feels Lag Man"], ["Slows the {WHEELS} for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.Assemble, new GlorpMeta(GlorpEffects.Assemble, ["Assemble", "Scatter"], ["Doubles the number of Jared symbols on the {WHEELS} for the next {TURNS}.", "Halves the number of Jared symbols on the {WHEELS} for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.CodeMichi, new GlorpMeta(GlorpEffects.CodeMichi, ["Code MICHI", "Glorp Tax"], ["Earn 25% more coins for the next {TURNS}.", "Earn 50% less coins for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.CorpaClap, new GlorpMeta(GlorpEffects.CorpaClap, ["Corpa Clap"], ["Initial bet is free for the next {TURNS}."], [2, 3, 5]));
	array_set(glorp_effects_meta, GlorpEffects.MichiMitosis, new GlorpMeta(GlorpEffects.MichiMitosis, ["Michi-Mitosis"], ["Doubles the number of Michi symbols on the {WHEELS} for the next {TURNS}."], [2, 3, 5]));
	array_set(glorp_effects_meta, GlorpEffects.DulledWhimsy, new GlorpMeta(GlorpEffects.DulledWhimsy, ["Dulled Whimsy"], ["Removes all the Glorp and TTS symbols from the {WHEELS} for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.BigDickEnergy, new GlorpMeta(GlorpEffects.BigDickEnergy, ["Long Long Maaaaaan"], ["Transforms all Michi symbols into Longboi symbols for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.IHateYou, new GlorpMeta(GlorpEffects.IHateYou, ["Just Say You Hate Me"], ["Transforms all Heart symbols from the {WHEELS} into Broken Heart symbols for the next {TURNS}."], [3, 5, 10]));
	array_set(glorp_effects_meta, GlorpEffects.FreeBits, new GlorpMeta(GlorpEffects.FreeBits, ["Bits are free!", "HAH"], ["At the end of the next {TURNS}, earn 5 additional coins if you hit at least 1 symbol.", "At the end of the next {TURNS}, earn 3 less coins if you hit at least 1 symbol."], [3, 5]));
}