// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnUseCoin(){
	if(place_meeting(parCoin.x, parCoin.y, objCoinSlot) && sysGlobal.inserted_coins+sysGlobal.inserted_special_coins < 3)
	{
		sysGlobal.inserted_coins++;
		fnSetMultiplier();
		instance_destroy(parCoin);
	}
	else
	{
		parCoin.current_state = CoinState.Dropped;
	}
}