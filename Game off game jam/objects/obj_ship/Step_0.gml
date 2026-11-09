


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
else 
{
	if spd > 0
	{
		spd -= spd_deaccel
	}
}

if keyboard_check(vk_down)
{
	if spd > -spd_max * 0.25
	{
		spd -= spd_deaccel
	}
}



speed = spd * spd_multiplier;

var diff = angle_difference(dest,direction);

direction += diff * turning_multiplier;

if (image_follow_dir) image_angle = direction;