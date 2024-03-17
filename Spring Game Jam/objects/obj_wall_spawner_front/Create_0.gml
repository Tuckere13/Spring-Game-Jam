/// @description Insert description here
// You can write your code in this editor
randomize()
i = 0

while(i < 15){

instance_create_layer(random(room_width) , random_range(800/64, room_height/64) * 64, "Instances", type)

i++
}
k = 0
while(k < 10){

tempWidth = random(room_width/64)
tempHeight = random_range(832, room_height)
for (var j = 0; j < random_range(2,10); j += 1){
    instance_create_layer((tempWidth*64) + 64 * j, tempHeight, "Instances", type)
}
k++
}

