/// @description Remove coin
event_inherited();

if(GAME_STATE == GameState.Idle && sysGlobal.inserted_coins > 0)
{
	sysGlobal.inserted_coins--;
	sysGlobal.owned_coins++;
	switch(sysGlobal.inserted_coins)
	{
		case(0):
		case(1):
			sysGlobal.multiplier = 3;
			break;
		case(2):
			sysGlobal.multiplier = 2;
			break;
		case(3):
			sysGlobal.multiplier = 1;
			break;
	}
}