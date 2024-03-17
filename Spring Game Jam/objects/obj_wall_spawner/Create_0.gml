/// @description Insert description here
// You can write your code in this editor
randomize()
i = 0

while(i < 50){

instance_create_layer(random(room_width) , random(room_height), "Instances", type)

i++
}