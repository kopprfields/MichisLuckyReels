// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnDisableGlorpEffect(_effect_id, _wheels, _mode = false){
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
			if(!_mode)
			{
				for(var i = 0; i < array_length(wheels_id); i++)
				{
					sysGlobal.wheels[wheels_id[i]].assemble = false;
				}
			}
			else
			{
				for(var i = 0; i < array_length(wheels_id); i++)
				{
					sysGlobal.wheels[wheels_id[i]].scatter = false;
				}
			}
			break;
		case(GlorpEffects.DulledWhimsy):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].dulled_whimsy = false;
			}
			break;
		case(GlorpEffects.MichiMitosis):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].michimitosis = false;
			}
			break;
		case(GlorpEffects.FeelsLagMan):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].wheel_speed = 0.5;
			}
			break;
		case(GlorpEffects.BigDickEnergy):
			for(var i = 0; i < array_length(sysGlobal.wheels); i++)
			{
				sysGlobal.wheels[i].long_long_man = false;
			}
			break;
		case(GlorpEffects.IHateYou):
			for(var i = 0; i < array_length(wheels_id); i++)
			{
				sysGlobal.wheels[wheels_id[i]].i_hate_you = false;
			}
			break;
		case(GlorpEffects.CodeMichi):
			if(!_mode)
			{
				sysGlobal.flags[EventFlag.CodeMichi] = false;
			}
			else
			{
				sysGlobal.flags[EventFlag.GlorpTax] = false;
			}
			break;
		case(GlorpEffects.CorpaClap):
			sysGlobal.flags[EventFlag.CorpaClap] = false;
			break;
		case(GlorpEffects.FreeBits):
			if(!_mode)
			{
				sysGlobal.flags[EventFlag.FreeBits] = false;
			}
			else
			{
				sysGlobal.flags[EventFlag.Hah] = false;
			}
			break;
		default:
			break;
	}
}