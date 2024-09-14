if !oGame.drop and !oGame.paused {
	
	if abs(oLight.x + xoff - x) > 5 {
		if oLight.x + xoff > x {
			x += _speed	
			image_xscale = 1
	
		}
		else {
			x-= _speed	
			image_xscale = -1
	
		}
	}

	if abs(oLight.y + yoff - y) > 5 {
		if oLight.y + yoff> y {
			y += _speed	
	
		}
		else {
			y -= _speed
	
		}
	}
}

