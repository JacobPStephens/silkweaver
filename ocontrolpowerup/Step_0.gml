
if !oGame.drop and !oGame.paused {
	if dir == "up" {
		y -= _speed

	}
	else if dir == "down" {
		y += _speed	
		image_xscale = -1
	}

	if goLeft {
		x -= _speed	/ 3
	
	}

	else if goRight {
		x += _speed	 / 3
	
	}

	if y >= 1800 {
		dir = "up"	
	
	}

	else if y <= 0 {
		dir = "down"	
	
	}

	if x <= 0 {
		alarm[1] = 1
	
	}

	else if x >= 2400 {
		alarm[0] = 1	
	
	}
}

