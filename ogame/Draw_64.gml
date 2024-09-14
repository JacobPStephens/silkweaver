if drop {
	l = array_length(allDrops) - 1
	if !dropsGenerated {
		i = irandom_range(0, l)
		j = irandom_range(0, l)
		while (j == i) {
			j = irandom_range(0, l)
			
		}
		
	
		drop1 = allDrops[i]
		drop2 = allDrops[j]
		
		dropsGenerated = true
	}
	
	
	// draw first drop
	draw_sprite(drop1, 0, 33.3, 37.5)
	draw_sprite(sPress1, 0, 33.3, 37.5)

	// draw second drop
	draw_sprite(drop2, 0, 166.6, 37.5)
	draw_sprite(sPress2, 0, 166.6, 37.5)

	
		
}

if paused{
	draw_sprite(sPausedIcon2, 0, 150, 112)	
	
}
