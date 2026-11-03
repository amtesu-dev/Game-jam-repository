/// @description circle spawning

#region variables

	#region random values
	var obj = obj_dude_enemy
	var rnd = random(1)
	var rnd_dudes = random(1)
	#endregion

var random_x = false
var random_y = true
var x_pos = undefined
var y_pos = undefined
var rnd_min_y = 0
var rnd_max_y = room_height
var rnd_min_x = undefined
var rnd_max_x = undefined
var var_struct = {}
#endregion



#region random dudes spawn type
if obj = obj_dude_enemy or obj = obj_dude_friend
{
	if spawn_dudes_random
	{
		if rnd_dudes <= 0.5 
		{
			obj = obj_dude_enemy
		}
		else
		{
			obj = obj_dude_friend
		}
	}

	else if spawn_nice_dudes
	{
		obj = obj_dude_friend
	}
	else if spawn_evil_dudes
	{
		obj = obj_dude_enemy
	}
}
#endregion

#region random dudes spawn location
if rnd <= 0.25 //spawn left
{
	random_x = false
	random_y = true
	x_pos = 0
	y_pos = undefined
	rnd_min_x = undefined
	rnd_max_x = undefined
	rnd_min_y = 0
	rnd_max_y = room_height
}
else if rnd > 0.25 and rnd <= 0.5 // spawn right
{
	random_x = false
	random_y = true
	x_pos = room_width
	y_pos = undefined
	rnd_min_x = undefined
	rnd_max_x = undefined
	rnd_min_y = 0
	rnd_max_y = room_height
}
else if rnd > 0.5 and rnd <= 0.75 // spawn top
{
	random_x = true
	random_y = false
	x_pos = undefined
	y_pos = 0
	rnd_min_x = 0
	rnd_max_x = room_width
	rnd_min_y = undefined
	rnd_max_y = undefined
}
else if rnd > 0.5 and rnd <= 1 //spawn bottom
{
	random_x = true
	random_y = false
	x_pos = undefined
	y_pos = room_height
	rnd_min_x = 0
	rnd_max_x = room_width
	rnd_min_y = undefined
	rnd_max_y = undefined
}
#endregion



if spawn_delay <= 0
{
	if instance_number(obj_dude_friend) + instance_number(obj_dude_enemy) <= 50 // number of spawns limiter
	{
		spawn_obj(obj,x_pos,y_pos,random_x,random_y,rnd_min_x,rnd_max_x,rnd_min_y,rnd_max_y,var_struct)
		// the spawning part
		spawn_delay = spawn_frames
	}
}
else spawn_delay --



#region failed timesource

// i need to figure out how to make the time source keep it's random values and update it without 
// overloading the memory with time sources due to them being created every step

////if not time_source_exists(ts_spawn_dudes)
////{
//	var ts_spawn_dudes = time_source_create(time_source_game,dudes_spawn_delay,time_source_units_frames,spawn_obj,[
//	obj,
//	x_pos,
//	y_pos,
//	random_x,
//	random_y,
//	rnd_min_x,
//	rnd_max_x,
//	rnd_min_y,
//	rnd_max_y,
//	var_struct
//	])
////}

//time_source_start(ts_spawn_dudes)

#endregion









