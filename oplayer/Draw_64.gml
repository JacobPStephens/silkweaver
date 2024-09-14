// maybe do stuff here instead

draw_sprite(sLives, 0, 20, 15)
draw_sprite(sNums, _health div 10, 42, 15) //1st dig
draw_sprite(sNums, _health%10, 55, 15) // 2nd dig
//draw_healthbar(65, 9, 140, 20, (_score % 10 * 10), c_black, c_aqua, c_white, 0, true, false)

// draw timer
var mins = oGame.spawn div 60
draw_sprite(sNums, mins div 10, 124, 15)
draw_sprite(sNums, mins % 10, 137, 15)
draw_sprite(sColon, 0, 150, 15)
draw_sprite(sNums, (oGame.spawn % 60) div 10, 163, 15)
draw_sprite(sNums, (oGame.spawn % 60) % 10, 176, 15)
/*
draw_healthbar(5, 26, 85, 37, (_score % 10 * 10), c_black, c_aqua, c_white, 0, true, false)
draw_sprite(sNums, _score div 10, 95, 32) */

if global.mode != "endless" {
draw_healthbar(250, 9, 293, 20, (_score / diff * 100), c_black, c_aqua, c_white, 0, true, false)
}
else {
	draw_healthbar(250, 9, 293, 20, (_score / diff * 100), c_black, c_yellow, c_white, 0, true, false)	
	
}
	
draw_sprite(sNums, level div 10, 227, 15) 
draw_sprite(sNums, level % 10, 240, 15)

//draw_text(180, 15, oGame.levelUp)