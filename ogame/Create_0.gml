randomize()
//window_set_fullscreen(true)
drop = false
alarm[0] = 60

WASD = false
shielded = false

won = false

paused = false
levelUp = 0

oldHeartLevel = -1
oldWASDLevel = -1

prime = 0
instance_create_layer(x, y, "Instances", oLight)
instance_create_layer(x, y, "Instances", oLight2)	
dropsGenerated = false

if global.mode == "endless" {
	spawn = 600
	currentDrops = oTmp.currentDrops
	addedFreezes = true
	allDrops = oTmp.allDrops
	audio_stop_all()
	audio_sound_gain(bg_theme2, 1, 1)
	audio_play_sound(bg_theme2, 5, 1)
	
	for(var i = 0; i < 10; i+= 1){
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		
	}

}
else {
	spawn = 0

	prevDown = -1
	prevUp = -1
	allDrops = [sLongerWebs, sSlowerControls, sSpeedBoost, sThickerWebs]
	currentDrops = []
	addedFreezes = false
	audio_sound_gain(bg5, 1, 1)
	audio_play_sound(bg5, 5, 1)
}


// fade and play bgm
instance_create_layer(0, 0, "Instances", oFade)


