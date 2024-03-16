

next_room = Menu
changing_room = false;
timer = 240;

obj_fade_screen.image_alpha = 0;

audio_sound_gain(snd_menu_music, 0, 0)
audio_play_sound(snd_menu_music, 10, true, 1, 3)
audio_sound_gain(snd_menu_music, 1, 5000)

if(changing_room) {
	event_user(0);
}


