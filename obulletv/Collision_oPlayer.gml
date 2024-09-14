if !oGame.shielded and !oPlayer.hurt{
	oPlayer._health -= 1
	instance_destroy()
}
