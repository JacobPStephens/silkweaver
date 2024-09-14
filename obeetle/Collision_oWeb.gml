//oPlayer._score += 1
if !oGame.paused {
	image_blend = make_color_hsv(255, 100, 100)

	_health -= 1

	if _health % 500 == 0 {
		instance_create_layer(x, y, "soul", oSoul)
		audio_play_sound(kill1, 5, 0)
	
	}
	if _health <= 0 {
		instance_destroy()	
		

	}

	alarm[0] = 1;
}