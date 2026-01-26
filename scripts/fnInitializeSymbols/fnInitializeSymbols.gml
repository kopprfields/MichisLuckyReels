// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnInitializeSymbols(){
	var result = array_create(Symbols.SIZE, [0, 0, 0, 0, 0, 0]);
	array_set(result, Symbols.Heart, [0, 0, 0, nb_heart, 0, 0]);
	array_set(result, Symbols.Ring, [0, 0, 0, nb_ring, 0, 0]);
	array_set(result, Symbols.Spoon, [0, 0, 0, nb_spoon, 0, 0]);
	array_set(result, Symbols.Jared, [0, 0, 0, nb_jared, 0, 0]);
	array_set(result, Symbols.Fii, [0, 0, 0, nb_fii, 0, 0]);
	array_set(result, Symbols.Mita, [0, 0, 0, nb_mita, 0, 0]);
	array_set(result, Symbols.Michi, [0, 0, 0, nb_michi, 0, 0]);
	array_set(result, Symbols.Glorp, [0, 0, 0, nb_glorp, 0, 0]);
	array_set(result, Symbols.Tts, [0, 0, 0, nb_tts, 0, 0]);
	array_set(result, Symbols.Ferro, [0, 0, 0, nb_ferro, 0, 0]);
	return result;
}