


tower.x = x
tower.y = y
tower.dest = direction + 90



if keyboard_check(vk_left)
{
	dest = direction + turning_amount
}
else if keyboard_check(vk_right)
{
	dest = direction - turning_amount
}


if keyboard_check(vk_up)
{
	if spd < spd_max
	{
		spd += spd_accel
	}
}
else if ( spd > 0)

{
	spd -= spd_deaccel
}

if keyboard_check(vk_down)
{
	if spd > -spd_max * 0.25
	{
		spd -= spd_deaccel
	}
}
else if (spd < 0)
{
	spd += spd_deaccel
}




//spawn_frames = random_range(20,100)

//var dir = direction

////if (evil_spawns) dude = obj_dude_enemy
////else dude = obj_dude_friend



//if (spawn_timer <= 0)
//{
//	spawn_timer = spawn_frames
//	instance_create_layer(x,y,"lay_instances",obj_dude_enemy,
//	{
//		direction: dir,
//	})
//}

//spawn_timer --


speed = spd * spd_multiplier;

var diff = angle_difference(dest,direction);

direction += diff * turning_multiplier;



if (image_follow_dir) image_angle = direction;