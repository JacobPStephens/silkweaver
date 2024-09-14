if !hurt {
	sprite_index = sPlayerHurt
	i = irandom_range(1,2)
	if i == 1 {
		audio_play_sound(hurts1, 10, 0)
		
	}
	else {
		audio_play_sound(hurts2, 10, 0)	
		
	}
	alarm[1] = 90
	hurt = true
}