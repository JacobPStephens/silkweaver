draw_self();
/*
draw_text(x, y-50, upKey)
draw_text(x, y+50, downKey)
draw_text(x-50, y, leftKey)
draw_text(x+50, y, rightKey)
*/


//if !oGame.drop {


	draw_sprite(sLetters, map[? upKey], x, y-50)
	draw_sprite_ext(sFlare, upImg, x, y-50, 1, 1, 0, c_aqua, 1)
	
	draw_sprite(sLetters, map[? downKey], x, y+50)
	draw_sprite_ext(sFlare, downImg, x, y+50, 1, 1, 0, c_purple, 1)
	
	draw_sprite(sLetters, map[? leftKey], x-50, y)
	draw_sprite_ext(sFlare, leftImg, x-50, y, 1, 1, 0, c_green, 1)
	
	draw_sprite(sLetters, map[? rightKey], x+50, y)
	draw_sprite_ext(sFlare, rightImg, x+50, y,  1, 1, 0, c_red, 1)
//}


if !oGame.drop and !oGame.paused {
	if alarm_get(0) <= 100 {
	
		if toChange == 0 
			draw_sprite(sWarning, 0, x, y-50)
	
		else if toChange == 1
			draw_sprite(sWarning, 0, x, y+50)
	
		else if toChange == 2
			draw_sprite(sWarning, 0, x-50, y)
	
		else if toChange == 3
			draw_sprite(sWarning, 0, x+50, y)
	}
}



//draw_text(x-40, y-112.5, alarm_get(0))
/*
draw_text(x-40, y-112.5, mins div 10)
draw_text(x-30, y-112.5, mins % 10)
draw_text(x-25, y-112.5, ": ")
draw_text(x-20, y-112.5, (oGame.spawn%60) div 10)
draw_text(x-10, y-112.5, (oGame.spawn%60) % 10)
//draw_sprite(sLives, 0, x-134, y-100)

//draw_text(x-125, y-112.5, _health)
//draw_text(x-0, y-112.5, oGame.spawn)
