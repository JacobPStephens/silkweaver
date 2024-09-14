
up = keyboard_check(ord(upKey))
down = keyboard_check(ord(downKey))
left = keyboard_check(ord(leftKey))
right = keyboard_check(ord(rightKey))

upPressed = keyboard_check_pressed(ord(upKey))
downPressed = keyboard_check_pressed(ord(downKey))
leftPressed = keyboard_check_pressed(ord(leftKey))
rightPressed = keyboard_check_pressed(ord(rightKey))


moving = up or down or left or right

if oGame.shielded {
	sprite_index = sPlayerRainbow
	image_speed = 0.5
	
}


if !oGame.drop and !oGame.paused {
	if up {
		y -= moveSpeed
		image_angle = 0
		if place_meeting(x, y - moveSpeed, oWall) { 
			y += moveSpeed
		}
		

	}
	else if down {
		y += moveSpeed	
		image_angle = 180
		if place_meeting(x, y + moveSpeed, oWall) { 
			y -= moveSpeed
		}

	}
	else if left {
		x -= moveSpeed
		image_angle = 90
		if place_meeting(x - moveSpeed, y, oWall) { 
			x += moveSpeed
			show_debug_message("collision left")
		}

		
	}
	else if right {
		x += moveSpeed
		image_angle = 270
		if place_meeting(x + moveSpeed, y, oWall) { 
			x -= moveSpeed
		}

	
	}

	if moving {
		image_speed = 0.5	
	
	}
	else {
		image_speed = 0
	}

	if !hurt {
		instance_create_layer(x, y, "Instances", oWeb)
	}
	//if keyboard_check(vk_space) {
		
	//}
}
else {
	// pause re-roll timer if game is paused
	alarm[0]++	
	
}

j = irandom_range(1,5)
if upPressed {
	upImg = 0
	alarm[2] = 1
	if (oGame.spawn < 300) {
		audio_play_sound(sixthA, 10, 0)
	}
	else  {
		show_debug_message(oGame.spawn)
		audio_play_sound(fourthB, 10, 0)
	}
	/*
	if j == 1
		audio_play_sound(up1, 10, 0)
	else 
		audio_play_sound(up2, 10, 0)*/
	
}

else if downPressed {
	downImg = 0
	alarm[3] = 1

	audio_play_sound(rootA, 10, 0)
	/*
	else {

		audio_play_sound(rootB, 10, 0)
	}
	/*
	if j == 1
		audio_play_sound(down1, 10, 0)
	else
		audio_play_sound(down2, 10, 0)*/
	
}
else if leftPressed {
	leftImg = 0
	alarm[4] = 1
	if oGame.spawn < 300 {
		audio_play_sound(thirdA, 10, 0) 
	}
	else {

		audio_play_sound(thirdB, 10, 0)
	}
	/*
	if j == 1
		audio_play_sound(left1, 10, 0)
	else
		audio_play_sound(left2, 10, 0)*/
	
}
else if rightPressed {
	rightImg = 0
	alarm[5] = 1

	audio_play_sound(fifthA, 10, 0)
	/*
	else { 
		audio_play_sound(fifthB, 5, 0)
	}
	/*
	if j == 1
		audio_play_sound(right1, 10, 0)
	else
		audio_play_sound(right2, 10, 0)*/
	
}

_health = min(_health, 99)
//_score = min(_score, 999)