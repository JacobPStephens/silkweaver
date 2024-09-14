
rx = irandom_range(1, 2400)
ry = irandom_range(1,1800)

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

_speed = irandom_range(5, 15) / 10
