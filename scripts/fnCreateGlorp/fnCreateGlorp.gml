// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function GlorpEffect(_id, _instance, _metadata, _wheel_id = noone, _duration = 1) constructor{
	glorpEffectId = _id;
	glorpEffectInstance = _instance;
	glorpEffectWheel = _wheel_id;
	glorpEffectDuration = _duration;
	glorpEffectMeta = _metadata;
	glorpEffectAttribute = noone;
}

function GlorpMeta(_id, _name, _description, _turns = -1) constructor{
	glorpEffectId = _id;
	glorpEffectName = _name;
	glorpEffectDescription = _description;
	glorpEffectTurns = _turns;
}