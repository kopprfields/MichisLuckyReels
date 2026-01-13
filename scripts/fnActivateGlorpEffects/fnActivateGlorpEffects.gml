// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnActivateGlorpEffects(){
	for(var i = 0; i < 3; i++)
	{
		if(objGlorpEffectBar.active_effects[i] != undefined)
		{
			if(objGlorpEffectBar.active_effects[i].glorpEffectId == GlorpEffects.Undiscovered)
			{
				var selected_id = 1;
				
				objGlorpEffectBar.active_effects[i].glorpEffectId = selected_id;
				objGlorpEffectBar.active_effects[i].glorpEffectInstance.glorp_effect_id = selected_id;
			}
		}
	}
}