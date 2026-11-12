

if (drag) can_shoot = false
//else can_shoot = true




if (shoot_delay != 0 ) shoot_delay --;


if (shoot_delay <= 0) shooting = true
else shooting = false

if (can_shoot)
{

	if (shooting) //and (shoot_delay <= 0)
	{
		ex_shoot()
		
		shoot_delay = shoot_frames
		shooting = false
	}
}


#region setting the target
	#region setting the target for the cannon to look at

		var get_nearest_target = function(element,index)
		{
			instance_nearest(element.x,element.y,element)
	
		}

		// show_debug_message(string(array_foreach(target_list,get_nearest_target)))




		//if (target != noone or undefined && instance_exists(target))
		//{
		//	var target = target
		//	direction = point_direction(x,y,target.x,target.y)
	
	
		//}





	#endregion

	#region following the mouse
		var follow = global.follow_mouse
		if keyboard_check_pressed(ord("M")) // set the target as the mouse
		{
			global.follow_mouse = not global.follow_mouse
		}

		if (global.follow_mouse) dest = point_direction(x,y,mouse_x,mouse_y)

	#endregion


	var get_nearest = function() //attempt to retrieve the nearest object in the target_list array
	{
		for (var i = -1;i >= array_length(target_list) - 1;i ++)
		{
		
		
		}

	}



	target_nearest = instance_nearest(x,y,obj_dude_enemy)
	


	if (target == noone )
	{
		target = collision_circle(x,y,radius,target_nearest,false,true);	//sets a target if it's within range
	}
	else 
	{
		if (not instance_exists(target) or not point_in_circle(target.x,target.y,x,y,radius))
		// checks if the target doesn't exist or if the target is within range
		{
			target = noone;
		}
	}

	if (target == noone) can_shoot = false
	else can_shoot = true


	if (target != noone)
	{
		dest = point_direction(x,y,target.x,target.y)
	}


	dest ??= def_dir;
	// if the destination was still undefined by the time it gets here it's set to the "def_dir" variable

	var diff = angle_difference(dest,direction)
	direction += diff * 0.1

	if (image_follow_dir) image_angle = direction

#endregion