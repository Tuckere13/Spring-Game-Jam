
function curse_screen(){
	
	instance_create_layer(room_width/2, room_height/2, "CurseScreen", obj_curse_choice_screen);
	
	var _current_choices = array_create(2);
	_current_choices = choose_curses();
	
	
	
	
}

function choose_curses(){
	
	
	
}