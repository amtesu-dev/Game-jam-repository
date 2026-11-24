

//tower.x = x
//tower.y = y
//tower.dest = direction + 90


//var _arr = ap_ship[floor(image_index)]

//tower.x = _arr[0];
//tower.y = _arr[1];
//tower.image_angle = _arr[2];

#region movement
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
	speed = spd * spd_multiplier;  
	var diff = angle_difference(dest,direction);
	direction += diff * turning_multiplier;
	if (image_follow_dir) image_angle = direction
#endregion




array_foreach(arr_attached,function(_item)
{
	//if instance_exists(_item)
	//{
		var _x = lengthdir_x(_item.leng,_item.dir + image_angle);
		var _y = lengthdir_y(_item.leng,_item.dir + image_angle);
	
		_item.inst.x = x + _x
		_item.inst.y = y + _y
		_item.inst.image_angle = image_angle + _item.angle;
	//}
	
})













