
if !oGame.drop and !oGame.paused {
	if dir == "left" {
		x -= _speed
		image_xscale = 1
	
	}
	else if dir == "right" {
		x += _speed	
		image_xscale = -1
	}

	if goUp {
		y -= _speed	/ 3
	
	}

	else if goDown {
		y += _speed	 / 3
	
	}

	if x >= 2350 {
		dir = "left"	
	
	}

	else if x <= 50 {
		dir = "right"	
	
	}

	if y <= 50 {
		alarm[0] = 1
	
	}

	else if y >= 1750 {
		alarm[1] = 1	
	
	}
}

