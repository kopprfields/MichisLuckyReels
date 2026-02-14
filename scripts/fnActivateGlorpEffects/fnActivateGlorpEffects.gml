// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnActivateGlorpEffects(){
	for(var i = 0; i < array_length(objGlorpEffectBar.active_effects); i++)
	{
		if(objGlorpEffectBar.active_effects[i] != undefined)
		{
			if(objGlorpEffectBar.active_effects[i].glorpEffectId == GlorpEffects.Undiscovered)
			{
				
				var selected_id = -1;
				
				while(selected_id < 0 || array_contains(objGlorpEffectBar.active_effects_id, selected_id))
				{
					selected_id = irandom_range(1, GlorpEffects.SIZE-1);
				}
				var selected_wheel = irandom(6);
				var duration = sysGlobal.glorp_effects_meta[selected_id].glorpEffectTurns[irandom(array_length(sysGlobal.glorp_effects_meta[selected_id].glorpEffectTurns)-1)];
				var mode = irandom(array_length(sysGlobal.glorp_effects_meta[selected_id].glorpEffectName)-1);
				
				array_push(objGlorpEffectBar.active_effects_id, selected_id);
				
				objGlorpEffectBar.active_effects[i].glorpEffectId = selected_id;
				objGlorpEffectBar.active_effects[i].glorpEffectDuration = duration;
				objGlorpEffectBar.active_effects[i].glorpEffectWheel = selected_wheel;
				objGlorpEffectBar.active_effects[i].glorpEffectMeta = sysGlobal.glorp_effects_meta[selected_id];
				
				objGlorpEffectBar.active_effects[i].glorpEffectInstance.glorp_effect_id = selected_id;
				objGlorpEffectBar.active_effects[i].glorpEffectInstance.mode = mode;

				objGlorpEffectBar.active_effects[i].glorpEffectInstance.alarm[0] = 1;

				//Enable effect
				fnEnableGlorpEffect(selected_id, selected_wheel, mode);
			}
		}
	}
}