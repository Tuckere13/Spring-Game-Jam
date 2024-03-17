randomize()


y += 1.35;


if (y > room_height + 455){
	
	var _slot = round(random_range(0, 5));
	
	if(_slot == 1) {
		x = 100;
	}
	if(_slot == 2) {
		x = 300;
	}
	if(_slot == 3) {
		x = 500;
	}
	if(_slot == 4) {
		x = 700;
	}
	if(_slot == 5) {
		x = 900;
	}
	
	y = -425;
}