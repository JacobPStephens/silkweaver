/// @description Manage waves
if !drop and !paused{
	i = irandom_range(1,2)

	if (spawn < 10) and !won{
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
	
			
	}
	
	if (spawn < 50) and !won {
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)		

	}

	// wasps
	if (spawn > 50) and (spawn % 6 == 0) and !won{
		instance_create_layer(x, y, "Instances", oWasp)
		
		if (spawn % 3 == 0)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)		

		if (spawn > 170) {

			if (spawn < 300) {
			instance_create_layer(x, y, "Instances", oWasp)
			instance_create_layer(x, y, "Instances", oWasp)

			}
			
			instance_create_layer(x, y, "Instances", oMoth1)
			instance_create_layer(x, y, "Instances", oMoth2)
			instance_create_layer(x, y, "Instances", oMoth1)
			instance_create_layer(x, y, "Instances", oMoth2)

		}
		
		
	}

	if (spawn == 297) {
		audio_sound_gain(bg5, 0, 3000)
		
		alarm[5] = 180
				
	}
	
	if (spawn > 310) and (spawn % 5 == 0) and (spawn < 360){
		instance_create_layer(oWasp)	
		
	}
	// from 6 mins till 9 mins
	if (spawn > 360) and (spawn < 537){
		if !instance_exists(oLight3) {
			instance_create_layer(x, y, "Instances", oLight3)	
			
		}
		
		
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oMoth1)
		instance_create_layer(x, y, "Instances", oMoth2)
		instance_create_layer(x, y, "Instances", oMoth3)
		
		if (spawn % 10 == 0) {
			instance_create_layer(x, y, "Instances", oWasp)
			
		}
		
		// beetles spawn after 7 min
		if (spawn % 20 == 0) and (spawn > 420) {
			instance_create_layer(x, y, "Instances", oBeetle)
			
		}
		
		
		
	}
	
	if (spawn > 540) {
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oWasp)
		if (spawn % 10 == 0) {
			instance_create_layer(x, y, "Instances", oBeetle)
		}
	}
	// endless 
	if (spawn > 600)  {
		
		if !instance_exists(oLight3) {
			instance_create_layer(x, y, "Instances", oLight3)	
			
		}
				
		if !instance_exists(oLight2) {
			instance_create_layer(x, y, "Instances", oLight2)	
			
		}
						
		if !instance_exists(oLight) {
			instance_create_layer(x, y, "Instances", oLight)	
			
		}
		
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oBulletH)
		instance_create_layer(x, y, "Instances", oBulletV)
		instance_create_layer(x, y, "Instances", oMoth1)
		instance_create_layer(x, y, "Instances", oMoth2)
		instance_create_layer(x, y, "Instances", oMoth3)
		
		if (spawn % 10 == 0) 
			instance_create_layer(x, y, "Instances", oWasp)
		if (spawn % 20 == 0) 
			instance_create_layer(x, y, "Instances", oBeetle)
	}
	// WIN
	if (spawn == 596) {
		won = true
		oFade.fade = "toBlack"
		alarm[7] = 240
		instance_create_layer(0, 0, "Instances", oTmp)
		audio_sound_gain(bg_theme2, 0, 3000)
		instance_destroy(oBulletH)
		instance_destroy(oBulletV)
		instance_destroy(oWasp)
		instance_destroy(oBeetle)
		instance_destroy(oMoth1)
		instance_destroy(oMoth2)
		instance_destroy(oMoth3)
		
		
	}
	

	spawn += 1
	
	
}

if !oGame.drop and !oGame.paused {
	alarm[0] = 60;
}


