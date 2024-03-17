/// @description Insert description here
// You can write your code in this editor

//EVAN PUSHED STUFF - 11:40 PM-ish
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	//obj_player.hp = global.playerInfo.hp;
	draw_healthbar(20, 20, 200, 40, obj_player.hp, c_black, c_lime, c_green, 0, true, true)
	draw_text_transformed_color(45, 60, obj_player.hp, 1, 1, 0, c_lime, c_lime, c_lime, c_lime, 1)
}