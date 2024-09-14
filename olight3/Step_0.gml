
if !oGame.drop and !oGame.paused{
	if dir == "up" {
		y -= _speed

	}
	else if dir == "down" {
		y += _speed	
		image_xscale = -1
	}

	if goLeft {
		x -= _speed
	
	}

	else if goRight {
		x += _speed
	
	}

	if y >= 1700 {
		dir = "up"	
	
	}

	else if y <= 50 {
		dir = "down"	
	
	}

	if x <= 50 {
		alarm[1] = 1
	
	}

	else if x >= 2350 {
		alarm[0] = 1	
	
	}
}

