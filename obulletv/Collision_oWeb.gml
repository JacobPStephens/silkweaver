
if !oGame.paused {
	audio_play_sound(kill1, 5, 0)
	instance_create_layer(x, y, "soul", oSoul)
	instance_destroy()
}