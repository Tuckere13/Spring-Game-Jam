if (!invinc){
stagger = true;
hp -= other.attack_power;
invinc = true;
}

alarm_set(2, stagger_time) //stagger
alarm_set(3, 15) // invinciniblivi