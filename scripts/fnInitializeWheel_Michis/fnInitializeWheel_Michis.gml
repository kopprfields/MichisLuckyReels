// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeWheel_Michis(){
	var symbol;
	repeat(nb_michi)
	{
		if(long_long_man)
		{
			switch(wheel_number)
			{
				case 0:
					symbol = NEW_LONGBOI1;
					break;
				case 1:
					symbol = NEW_LONGBOI2;
					break;
				case 2:
					symbol = NEW_LONGBOI3;
					break;
			}
		}
		else
		{
			symbol = NEW_MICHI;
		}
		ds_list_add(wheel_values, symbol);
	}
}