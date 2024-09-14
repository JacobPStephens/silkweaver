image_speed = 0.2

tries = 0
rx = irandom_range(1, 2400)
ry = irandom_range(1, 1800)
while (abs(oPlayer.x - rx) < 100) or (abs(oPlayer.y - ry) < 100) and (tries < 50) {
	rx = irandom_range(1, 2400)
	ry = irandom_range(1,1800)
	tries += 1
	show_debug_message([oPlayer.x, rx])
	show_debug_message([oPlayer.y, ry])

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

alarm[0] = 1

_speed = irandom_range(7, 17) / 20

// calc image speed based on _speed
norm = (_speed - 0.7) / (1.7-0.7)
image_speed = norm * (0.3 - 0.1) + 0.1
