/// @description Insert description here
// You can write your code in this editor
randomize()

num_wall_side = round(random(5))

while(num_wall_side > 0) {
	instance_create_layer(x + num_wall_side*sprite_width, y, "Instances", obj_wall_random)
	num_wall_side--
}

wall_scalex = random(5)

wall_scaley = random(5)
 