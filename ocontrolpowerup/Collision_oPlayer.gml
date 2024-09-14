
oGame.prevUp = oPlayer.upKey
oGame.prevDown = oPlayer.downKey

oPlayer.upKey = "W"
oPlayer.leftKey = "A"
oPlayer.rightKey = "D"
oPlayer.downKey = "S"
oGame.WASD = true
oGame.alarm[2] = 600
audio_play_sound(wasdPickup, 10, 0)
instance_destroy()