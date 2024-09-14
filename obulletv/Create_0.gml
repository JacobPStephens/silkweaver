image_speed = 0.2

tries = 0
rx = irandom_range(1, 2400)
ry = irandom_range(1, 1800)
while (abs(oPlayer.x - rx) < 100) or (abs(oPlayer.y - ry) < 100) and (tries < 50) {
	rx = irandom_range(1, 2400)
	ry = irandom_range(1,1800)
	tries += 1

}


x = rx
y = ry
i = irandom_range(1,4);

if i == 1 {
	dir = "up"
}
else {
	dir = "down"	
	
}
goRight = true
goLeft = false

i = irandom_range(1,3) {
	if i == 3 {

		j = irandom_range(1,3)
		if j == 1
			sprite_index = sButterfly
		else if j == 2
			sprite_index = sButterflyBlue
				
		else if j == 3 
			sprite_index = sButterflyRed
			
	}
	
}
alarm[0] = 1

if (oGame.spawn < 10000) {
_speed = irandom_range(7, 13) / 10
}
else if (oGame.spawn < 100000) {
_speed = irandom_range(10, 20) / 10	
	
}

// calc image speed based on _speed
norm = (_speed - 0.7) / (1.3-0.7)
image_speed = norm * (0.3 - 0.1) + 0.1
