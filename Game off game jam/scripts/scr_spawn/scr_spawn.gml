

//function for spawning objects when called
function func_spawn_obj(spawned_object,location_x,location_y,random_location,rnd_min_x,rnd_max_x,rnd_min_y,rnd_max_y,var_struct)
{
	// if you wish to make the random area a square leave either the x or y random coordinates as undefiend or noone
	// "var_struct" should be set as undefiened if you don't want to use it
	if rnd_min_y = noone or undefined and rnd_max_y = noone or undefined
	{
	rnd_min_y = rnd_min_x
	rnd_max_y = rnd_min_x
	}
	else if rnd_min_x = noone or undefined and rnd_max_x = noone or undefined
	{
	rnd_min_x = rnd_min_y
	rnd_max_x = rnd_max_y	
	}
	
	
	
	if random_location == true
	{
	
	location_x = random_range(rnd_min_x,rnd_max_x)
	location_y = random_range(rnd_min_y,rnd_max_y)
	}


	instance_create_layer(location_x,location_y,"instances",spawned_object,var_struct)
	
	
}
