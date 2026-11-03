
//#region variables
//var spawn_dudes_random = false
//var spawn_nice_dudes = false
//var spawn_evil_dudes = true

//	#region random values
//	var dude = obj_enemy
//	var rnd = random(1)
//	var rnd_dudes = random(1)
//	#endregion

//var random_x = false
//var random_y = true
//var x_pos = 0
//var y_pos = undefined
//var rnd_min_y = 0
//var rnd_max_y = room_height
//var rnd_min_x = undefined
//var rnd_max_x = undefined
//var var_struct = {}
//#endregion

//#region random dudes spawn type
//if spawn_dudes_random
//{
//	if rnd_dudes <= 0.5 
//	{
//		dude = obj_enemy
//	}
//	else
//	{
//		dude = obj_friend
//	}
//}
//else if spawn_nice_dudes
//{
//	dude = obj_friend
//}
//else if spawn_evil_dudes
//{
//	dude = obj_enemy
//}
//#endregion

//#region random dudes spawn location
//if rnd <= 0.25 //spawn left
//{
//	random_x = false
//	random_y = true
//	x_pos = 0
//	y_pos = undefined
//	rnd_min_x = undefined
//	rnd_max_x = undefined
//	rnd_min_y = 0
//	rnd_max_y = room_height
//}
//else if rnd > 0.25 and rnd <= 0.5 // spawn right
//{
//	random_x = false
//	random_y = true
//	x_pos = room_width
//	y_pos = undefined
//	rnd_min_x = undefined
//	rnd_max_x = undefined
//	rnd_min_y = 0
//	rnd_max_y = room_height
//}
//else if rnd > 0.5 and rnd <= 0.75 // spawn top
//{
//	random_x = true
//	random_y = false
//	x_pos = undefined
//	y_pos = 0
//	rnd_min_x = 0
//	rnd_max_x = room_width
//	rnd_min_y = undefined
//	rnd_max_y = undefined
//}
//else if rnd > 0.5 and rnd <= 1 //spawn bottom
//{
//	random_x = true
//	random_y = false
//	x_pos = undefined
//	y_pos = room_height
//	rnd_min_x = 0
//	rnd_max_x = room_width
//	rnd_min_y = undefined
//	rnd_max_y = undefined
//}
//#endregion



////if not time_source_exists(ts_spawn_dudes)
////{
//	 global.ts_spawn_dudes = time_source_create(time_source_game,10,time_source_units_frames,spawn_obj,[
//	dude,
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
