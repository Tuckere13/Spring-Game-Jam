/// @description Insert description here
// You can write your code in this editor
randomize()

instance_create_layer(random(room_width), random(room_height), "Instances", type)

alarm_set(alarm[0], 300)