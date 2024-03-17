if (!invinc){
stagger = true;
hp -= other.attack_power;
invinc = true;
image_blend = c_red;
}


alarm_set(0, stagger_time) //stagger
alarm_set(1, 5) // invincibility
//alarm_set(4, 5) // I frame indicator
//alarm_set(4, 10) // I frame indicator 2