if !oGame.drop and !oGame.paused {

	if abs(oPlayer.x - x) > 2 {
		if oPlayer.x > x {
			x += ms	
			image_xscale = -1
	
		}
		else {
			x-= ms	
			image_xscale = 1
	
		}
	}

	if abs(oPlayer.y - y) > 2 {
		if oPlayer.y > y {
			y += ms		
	
		}
		else {
			y -= ms	
	
		}
	}
}