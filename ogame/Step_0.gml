for(i = 0; i < array_length(currentDrops); i++) {
	var name = sprite_get_name(currentDrops[i])
	
}

// resest
if prime > 0 {
	prime -= 1
	
}

/*
if (oPlayer._score % 10 == 0) {
	
	
	if oPlayer._score != oldDropScore {
		//drop = true
		levelUp += 1
		oldDropScore = oPlayer._score
	}
	
	
}*/

if (oPlayer._score == 5) {
	
	if (oPlayer.level != oldHeartLevel) {
		instance_create_layer(x, y, "Instances", oHeart)
		audio_play_sound(test1, 10, 0)
		oldHeartLevel = oPlayer.level
	}
}


if (oPlayer._score == 5) and (oPlayer.level % 2 == 0) and (oPlayer.level != 0) {
	
		// dont spawn more after mins
		if (oGame.spawn < 300) {
			if (oPlayer.level != oldWASDLevel) {
			instance_create_layer(x, y, "Instances", oControlPowerup)
			audio_play_sound(test1, 10, 0)
			oldWASDLevel = oPlayer.level
		}
		
		else if (oGame.spawn == 500) {
			
			
		}
	}
	
}

/*
if (oPlayer._score == 8) and (oPlayer.level % 5 == 0) {
	if (oPlayer._score 
	
}*/

if (levelUp > 0) and (drop == false){
	drop = true	
	levelUp -= 1
	
	if instance_exists(oBulletH)
		oBulletH.alarm[2] = 1
	if instance_exists(oBulletV)
		oBulletV.alarm[2] = 1
	if instance_exists(oWasp)
		oWasp.alarm[2] = 1
	if instance_exists(oMothParent)
		oMothParent.alarm[2] = 1
	if instance_exists(oBeetle)
		oBeetle.alarm[2] = 1
	
	
}

// death
if oPlayer._health <= 0 {
	instance_destroy(oPlayer)
	game_restart()
	
}

/*
show_debug_message(camera_get_view_y(view_get_camera(0)))

camera_set_view_pos(view_get_camera(0), oPlayer.x-150, oPlayer.y-112.5)
*/