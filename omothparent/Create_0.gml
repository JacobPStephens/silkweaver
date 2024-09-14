tries = 0
rx = irandom_range(1, 2400)
ry = irandom_range(1,1800)
while (abs(oPlayer.x - rx) < 100) or (abs(oPlayer.y - ry) < 100) and (tries < 50) {
	rx = irandom_range(1, 2400)
	ry = irandom_range(1,1800)
	tries += 1
}



x = rx
y = ry
i = irandom_range(0, 1);

image_index = i


i = irandom_range(1, 2);

if i == 1 {
xoff = irandom_range(-50, 50)
yoff = irandom_range(-50, 50)

}
else if i == 2 {
xoff = irandom_range(-75, 75)
yoff = irandom_range(-75, 75)
	
}

_speed = irandom_range(10, 20) / 20

// calc image speed based on _speed
norm = (_speed - 0.5) / (1.0-0.5)
image_speed = norm * (0.3 - 0.1) + 0.1

