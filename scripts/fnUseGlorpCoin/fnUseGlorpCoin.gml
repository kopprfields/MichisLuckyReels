// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnUseGlorpCoin(){
	if(place_meeting(parCoin.x, parCoin.y, objCoinSlot) && sysGlobal.inserted_coins+sysGlobal.inserted_special_coins < sysGlobal.bet_base_price + 2*sysGlobal.bet_increment)
	{
		sysGlobal.inserted_special_coins += sysGlobal.special_coin_value;
		fnSetMultiplier();
		fnAddNewGlorpEffect();
		instance_destroy(parCoin);
	}
	else
	{
		parCoin.current_state = CoinState.Dropped;
	}
}