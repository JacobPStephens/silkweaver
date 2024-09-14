hurt = false

keys = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

webSprite = sWeb0
webDecay = 80
moveSpeed = 2
level = 0
diff = 10

if global.mode != "endless" {
	_score = 1
	_health = 5
	freezeUp = false
	freezeDown = false
	rerollTime = 560
	
	upKey = "W"
	leftKey = "A"
	downKey = "S"
	rightKey = "D"

	
}
else {
	_score = oTmp._score	
	_health = oTmp._health
	diff = oTmp.diff
	level = oTmp.level
	moveSpeed = oTmp.moveSpeed
	webDecay = oTmp.webDecay
	webSprite = oTmp.webSprite
	rerollTime = oTmp.rerollTime
	freezeUp = true
	freezeDown = true
	
	upKey = oTmp.upKey
	leftKey = oTmp.leftKey
	downKey = oTmp.downKey
	rightKey = oTmp.rightKey
		
}

upImg = 0
downImg = 0
leftImg = 0
rightImg = 0

toChange = 0

// random init
//reroll(keys, toChange)


alarm[0] = 400
image_speed = 0

map = ds_map_create()

ds_map_add(map, "A", 0)
ds_map_add(map, "B", 1)
ds_map_add(map, "C", 2)
ds_map_add(map, "D", 3)
ds_map_add(map, "E", 4)
ds_map_add(map, "F", 5)
ds_map_add(map, "G", 6)
ds_map_add(map, "H", 7)
ds_map_add(map, "I", 8)
ds_map_add(map, "J", 9)
ds_map_add(map, "K", 10)
ds_map_add(map, "L", 11)
ds_map_add(map, "M", 12)
ds_map_add(map, "N", 13)
ds_map_add(map, "O", 14)
ds_map_add(map, "P", 15)
ds_map_add(map, "Q", 16)
ds_map_add(map, "R", 17)
ds_map_add(map, "S", 18)
ds_map_add(map, "T", 19)
ds_map_add(map, "U", 20)
ds_map_add(map, "V", 21)
ds_map_add(map, "W", 22)
ds_map_add(map, "X", 23)
ds_map_add(map, "Y", 24)
ds_map_add(map, "Z", 25)
