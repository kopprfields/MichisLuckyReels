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

enum EventFlag {
	Idle,
	Score,
	TooBad,
	Whimsy,
	Jared,
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
	
	//Special symbols - TO REWORK, Maiko, Ferro and Glorp will be added as a separate Whimsy roulette
	Whimsy,
	/*Maiko, // Also counts as collab symbol, if paired with Michi => Ai Neko | 1 on each wheel
	Ferro, // 5 on each wheel
	Glorp, // 3 on each wheel
	
	//Collab symbols
	Numi, //Hell of a Good Time
	Camila, //Kill-V-Maim
	Usan, //Usan raging at Michi during his concert?
	Kuro, //Deja Vu
	Heavenly, //10 seconds of pepper spray clip?
	Ollie, // Matrioshka
	Jowol, //Mr Twitch impersonation clip?
	Mono, //Just a Little Shrimp song
	*/
	SIZE
}

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