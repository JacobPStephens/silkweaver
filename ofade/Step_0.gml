if fade == "fromBlack" {
	if image_alpha > 0 {
		image_alpha -= 0.005	
	
	}
}
else if fade == "toBlack" {
	if image_alpha < 1 {
		image_alpha += 0.005	
	}
	
	
}