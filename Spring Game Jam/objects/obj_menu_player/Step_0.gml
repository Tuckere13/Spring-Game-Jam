randomize()


y += 1.35;


if (y >= room_height + 255){
	
	var _slot = round(random_range(0, 5));
	
	if(_slot == 1) {
		x = 200;	
	}
	if(_slot == 2) {
		x = 400;
	}
	if(_slot == 3) {
		x = 600;
	}
	if(_slot == 4) {
		x = 800;
	}
	if(_slot == 5) {
		x = 1000;
	}
	
	y = -225;
}