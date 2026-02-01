// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnEnableGlorpEffect(_effect_id, _wheels){
	var wheels_id = array_create(0);
	switch(_wheels)
	{
		case 0:
			wheels_id = [0];
			break;
		case 1:
			wheels_id = [1];
			break;
		case 2:
			wheels_id = [2];
			break;
		case 3:
			wheels_id = [0, 1];
			break;
		case 4:
			wheels_id = [0, 2];
			break;
		case 5:
			wheels_id = [1, 2];
			break;
		case 6:
			wheels_id = [0, 1, 2];
			break;
	}
	
	switch(_effect_id)
	{
		case(GlorpEffects.Assemble):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].assemble = true;
			}
			break;
		case(GlorpEffects.DulledWhimsy):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].dulled_whimsy = true;
			}
			break;
		case(GlorpEffects.MichiMitosis):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].michimitosis = true;
			}
			break;
		case(GlorpEffects.FeelsLagMan):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].wheel_speed = 0.1;
			}
			break;
		case(GlorpEffects.BigDickEnergy):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].long_long_man = true;
			}
			break;
		case(GlorpEffects.IHateYou):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].i_hate_you = true;
			}
			break;
		case(GlorpEffects.CodeMichi):
			sysGlobal.flags[EventFlag.CodeMichi] = true;
			break;
		case(GlorpEffects.CorpaClap):
			sysGlobal.flags[EventFlag.CorpaClap] = true;
			break;
		case(GlorpEffects.FreeBits):
			sysGlobal.flags[EventFlag.FreeBits] = true;
			break;
		case(GlorpEffects.GlorpTax):
			sysGlobal.flags[EventFlag.GlorpTax] = true;
			break;
		case(GlorpEffects.Hah):
			sysGlobal.flags[EventFlag.Hah] = true;
			break;
		default:
			break;
	}
}