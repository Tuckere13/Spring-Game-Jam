/// @description Insert description here
// You can write your code in this editor

//EVAN PUSHED STUFF - 11:40 PM-ish
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	//obj_player.hp = global.playerInfo.hp;
	draw_healthbar(20, 20, 200, 40, obj_player.hp, c_black, c_red, c_green, 0, true, true)
	draw_set_halign(fa_left)
	draw_text_transformed_color(20, 60,  "Health: ", 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1)
	draw_text_transformed_color(20, 85,  "Attack: ", 1, 1, 0, c_maroon, c_maroon, c_maroon, c_maroon, 1)
	draw_text_transformed_color(20, 110, "Defence: ", 1, 1, 0, c_blue, c_blue, c_blue, c_blue, 1)
	draw_text_transformed_color(20, 135, "Speed: ", 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_color(100, 60,  obj_player.hp, 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1)
	draw_text_transformed_color(100, 85,  global.attack_power, 1, 1, 0, c_maroon, c_maroon, c_maroon, c_maroon, 1)
	draw_text_transformed_color(100, 110, (1/obj_player.defence), 1, 1, 0, c_blue, c_blue, c_blue, c_blue, 1)
	draw_text_transformed_color(100, 135, obj_player.speed_buff, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
}