
if !oGame.drop and !oGame.paused {
	
	if abs(oLight3.x + xoff - x) > 5 {
		if oLight3.x + xoff > x {
			x += _speed	
			image_xscale = 1
	
		}
		else {
			x-= _speed	
			image_xscale = -1
	
		}
	}

	if abs(oLight3.y + yoff - y) > 5 {
		if oLight3.y + yoff> y {
			y += _speed	
	
		}
		else {
			y -= _speed
	
		}
	}
}

/// @description Insert description here
// You can write your code in this editor




























