if !hurt {
	sprite_index = sPlayerHurt
	alarm[1] = 90
	hurt = true
	i = irandom_range(1,2)
	if i == 1 {
		audio_play_sound(hurts1, 10, 0)
		
	}
	else {
		audio_play_sound(hurts2, 10, 0)	
		
	}
}