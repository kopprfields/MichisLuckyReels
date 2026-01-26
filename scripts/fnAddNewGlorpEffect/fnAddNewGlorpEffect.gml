// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnAddNewGlorpEffect(){
	var coin_added = false;
	for(var i = 0; i < 3; i++)
	{
		if(objGlorpEffectBar.active_effects[i] == undefined)
		{
			coin_added = true;
			var inst = instance_create_layer(0, 0, "UI_Middle", objGlorpEffect, {glorp_slot_id: i, glorp_effect_id: GlorpEffects.Undiscovered});
			objGlorpEffectBar.active_effects[i] = new GlorpEffect(GlorpEffects.Undiscovered, inst, sysGlobal.glorp_effects_meta[GlorpEffects.Undiscovered]);
			inst.alarm[0] = 1;
			break;
		}
	}
}