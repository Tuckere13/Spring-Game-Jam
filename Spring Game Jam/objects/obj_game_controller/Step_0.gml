


if room == rm_main
{
if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[0]++;
    alarm[1]++;
    }
}

if global.curseInfo[0].isActive = true {
	global.midas = true;
}
if global.curseInfo[1].isActive = true {
	global.reverse = true;
}
if global.curseInfo[2].isActive = true {
	global.bees = true;
}
if global.curseInfo[3].isActive = true {
	global.achilles = true;
}
if global.curseInfo[4].isActive = true {
	global.tantalus = true;
}
if global.curseInfo[5].isActive = true {
	global.vampire = true;
}
if global.curseInfo[6].isActive = true {
	global.shoot = true;
}



