/// @description Add coin
if(!activated) exit;

activated = false;

if(GAME_STATE == GameState.Idle)
{
	//Add normal coins in priority
	if(sysGlobal.owned_coins > 0)
	{
		sysGlobal.inserted_coins++;
		sysGlobal.owned_coins--;
	}
	else
	{
		sysGlobal.inserted_special_coins++;
		sysGlobal.owned_special_coins--;
		fnAddNewGlorpEffect();
	}
	
	fnSetMultiplier();
}