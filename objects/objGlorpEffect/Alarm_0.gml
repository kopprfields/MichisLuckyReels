/// @description Update descriptions
glorp_effect_name = objGlorpEffectBar.active_effects[glorp_slot_id].glorpEffectMeta.glorpEffectName;

var description = objGlorpEffectBar.active_effects[glorp_slot_id].glorpEffectMeta.glorpEffectDescription;
var turns = objGlorpEffectBar.active_effects[glorp_slot_id].glorpEffectDuration;
var wheels = objGlorpEffectBar.active_effects[glorp_slot_id].glorpEffectWheel;

switch(wheels)
{
	case(0):
		description = string_replace(description, "{WHEELS}", "left wheel")
		break;
	case(1):
		description = string_replace(description, "{WHEELS}", "center wheel")
		break;
	case(2):
		description = string_replace(description, "{WHEELS}", "right wheel")
		break;
	case(3):
		description = string_replace(description, "{WHEELS}", "left and center wheels")
		break;
	case(4):
		description = string_replace(description, "{WHEELS}", "left and right wheels")
		break;
	case(5):
		description = string_replace(description, "{WHEELS}", "center and right wheels")
		break;
	case(6):
		description = string_replace(description, "{WHEELS}", "left, center and right wheels")
		break;
	default:
		break;
}

if(turns == 1)
{
	description = string_replace(description, "{TURNS}", "turn");
}
else
{
	description = string_replace(description, "{TURNS}", string(turns) + " turns");
}

glorp_effect_description = description;