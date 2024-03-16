

if (changing_room){
	
	obj_fade_screen.image_alpha += .004166
	
	timer--;
	if(timer == 0){
		room_goto(next_room);
	}
	
}