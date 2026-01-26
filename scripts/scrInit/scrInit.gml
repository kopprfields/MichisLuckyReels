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
	Hah,
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
	FeelsLagMan,
	Assemble,
	GlorpTax,
	CodeMichi,
	CorpaClap,
	MichiMitosis,
	DulledWhimsy,
	BigDickEnergy,
	IHateYou,
	FreeBits,
	Hah,
	
	SIZE
}


#macro CURVE_CUBIC animcurve_get_channel(acCommon, 0)

#macro GAME_STATE sysGlobal.game_state
#macro SCREEN_WIDTH sysGlobal.screen_width
#macro SCREEN_HEIGHT sysGlobal.screen_height

/*#macro HEART sysGlobal.symbols_list[Symbols.Heart]
#macro SPOON sysGlobal.symbols_list[Symbols.Spoon]
#macro RING sysGlobal.symbols_list[Symbols.Ring]
#macro JARED sysGlobal.symbols_list[Symbols.Jared]
#macro MICHI sysGlobal.symbols_list[Symbols.Michi]
#macro MITA sysGlobal.symbols_list[Symbols.Mita]
#macro FII sysGlobal.symbols_list[Symbols.Fii]
#macro GLORP sysGlobal.symbols_list[Symbols.Glorp]
#macro TTS sysGlobal.symbols_list[Symbols.Tts]
#macro FERRO sysGlobal.symbols_list[Symbols.Ferro]*/

#macro NEW_HEART new Symbol(Symbols.Heart, sprHeart, 1, Symbols.Heart)
#macro NEW_SPOON new Symbol(Symbols.Ring, sprRing, 1, Symbols.Ring)
#macro NEW_RING new Symbol(Symbols.Spoon, sprSpoon, 2, Symbols.Spoon)
#macro NEW_JARED new Symbol(Symbols.Jared, sprJared, 3, Symbols.Jared)
#macro NEW_MICHI new Symbol(Symbols.Michi, sprMichi, 5, Symbols.Michi)
#macro NEW_MITA new Symbol(Symbols.Mita, sprJaredMita, 3, Symbols.Jared)
#macro NEW_FII new Symbol(Symbols.Fii, sprJaredFii, 3, Symbols.Jared)
#macro NEW_GLORP new Symbol(Symbols.Glorp, sprGlorp, 0, Symbols.Whimsy)
#macro NEW_TTS new Symbol(Symbols.Tts, sprTTS, 0, Symbols.Whimsy)
#macro NEW_FERRO new Symbol(Symbols.Ferro, sprFerro, 0, Symbols.Whimsy)