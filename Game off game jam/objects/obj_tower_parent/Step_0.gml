
var dir = direction





if (drag) can_shoot = false
//else can_shoot = true

locked = true

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

	if keyboard_check_pressed(ord("M")) // set the target as the mouse
	{
		follow_mouse = not follow_mouse
	}

	if (follow_mouse) dest = point_direction(x,y,mouse_x,mouse_y)




	var get_nearest = function() //attempt to retrieve the nearest object in the target_list array
	{
		for (var i = -1;i >= array_length(target_list) - 1;i ++)
		{
		
		
		}

	}



	target_nearest = instance_nearest(x,y,obj_dude_enemy)

	if (target = noone)
	{
		target = collision_circle(x,y,radius,target_nearest,false,true);
	}
	else 
	{
		if (not instance_exists(target))
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

	var diff = angle_difference(dest,dir)

	direction += diff * 0.1

	if (image_follow_dir) image_angle = direction

#endregion