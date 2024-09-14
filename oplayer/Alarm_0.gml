if !oGame.drop and !oGame.paused {
	reroll(keys, toChange)
	
	if toChange == 3 {
		toChange = 0	
	
	}
	else {
		toChange += 1	
	
	}
	
	alarm[0] = rerollTime
	
}
