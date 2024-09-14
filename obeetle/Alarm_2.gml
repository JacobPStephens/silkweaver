dist = 10

if (abs(oPlayer.x - x) < dist) or (abs(oPlayer.y - y) < dist) {
	instance_create_layer(x, y, "soul", oSoul)
	instance_destroy()	
	
}