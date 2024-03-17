/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	x = obj_player.x
	y = obj_player.y
	part_system_position(bees, obj_player.x, obj_player.y)
}

if (instance_exists(obj_enemy)){
	if (collision_circle(x, y, 187, obj_enemy, false, true)) {
		obj_enemy.hp -= 0.02
	}
}
if (instance_exists(obj_health_powerup)){
	if (collision_circle(x, y, 187, obj_health_powerup, true, true)) {
		//alarm_set(0, 1000)
		instance_destroy(obj_health_powerup)
	}
}

	if (collision_circle(x, y, 75, obj_bullet, false, true)) {
		//alarm_set(0, 1000)
		obj_bullet.visible = false
	}

	if (collision_circle(x, y, 75, obj_web, false, true)) {
		//alarm_set(0, 1000)
		obj_web.visible = false
	}
