// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fnActivateEvent(_event_id, _duration){
	sysEvent.current_state = _event_id;
	sysEvent.event_finished = false;
	
	if(_event_id == EventFlag.Score)
	{
		sysEvent.alarm[1] = _duration;
	}
	else
	{
		sysEvent.alarm[0] = _duration;
	}
	
	switch(_event_id)
	{
		case EventFlag.Jared:
			audio_play_sound(sfxJared, 1, false);
			break;
		case EventFlag.Whimsy:
			audio_play_sound(sfxWhimsy, 1, false);
			break;
		case EventFlag.Score:
			audio_play_sound(sfxScore, 1, false);
			break;
		case EventFlag.TooBad:
			audio_play_sound(sfxTooBad, 1, false);
			break;
	}
}