/// @description Insert description here
// You can write your code in this editor
randomize()
i = 0

while(i < 1){

spinStruct = {dir_string:"NESW ne nw se sw X"}
noSpinStruct = {dir_string:"NESW ne nw se sw"}

//if (random(10) > 5){
	instance_create_layer(random(room_width) , random(room_height), "Instances", type, noSpinStruct)
//}
//else{
//	instance_create_layer(random(room_width) , random(room_height), "Instances", type, spinStruct)
//}

i++
}


