enum GameState {
	Idle,
	WheelStarting,
	WheelTurning,
	Paused,
	Recap
}

enum WheelState {
	Idle,
	Starting,
	Turning,
	Stopping,
	Stopped
}

enum ButtonState {
	Idle,
	Pressed,
	Disabled
}

enum CoinState {
	Pressed,
	Dropped,
	Used
}

enum EventFlag {
	Idle,
	Score,
	TooBad,
	Whimsy,
	Glorp,
	Tts,
	Ferro,
	SuperJared,
	Mita,
	Fii,
	GigaJackpot,
	Collab,
	SIZE
}

enum Symbols {
	//Regular symbols
	Heart,
	Ring,
	Spoon,
	Jared,
	Michi,
	
	//Named Jared symbols | count as Jared
	Fii,
	Mita,
	
	//Special symbols
	Whimsy, //Type only, no actual symbol
	Glorp,
	Tts,
	Ferro,
	SIZE
}

enum GlorpEffects {
	Undiscovered,
	Discovered
}


#macro CURVE_CUBIC animcurve_get_channel(acCommon, 0)

#macro GAME_STATE sysGlobal.game_state
#macro SCREEN_WIDTH sysGlobal.screen_width
#macro SCREEN_HEIGHT sysGlobal.screen_height

#macro HEART sysGlobal.symbols_list[Symbols.Heart]
#macro SPOON sysGlobal.symbols_list[Symbols.Spoon]
#macro RING sysGlobal.symbols_list[Symbols.Ring]
#macro JARED sysGlobal.symbols_list[Symbols.Jared]
#macro MICHI sysGlobal.symbols_list[Symbols.Michi]
#macro MITA sysGlobal.symbols_list[Symbols.Mita]
#macro FII sysGlobal.symbols_list[Symbols.Fii]
#macro WHIMSY sysGlobal.symbols_list[Symbols.Whimsy]
#macro GLORP sysGlobal.symbols_list[Symbols.Glorp]
#macro TTS sysGlobal.symbols_list[Symbols.Tts]
#macro FERRO sysGlobal.symbols_list[Symbols.Ferro]