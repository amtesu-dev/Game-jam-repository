// written by Hastiry

// put this function in a object and fill all the arguements accordingly to make it move
//NOTE: the move speed should be a positive value
//make sure both your structs have everything named correctly or else the function won't work properly(or it won't work at all lol)
// look at the area that used the "animated" check that's where all the animation related stuff is
// incase you DON'T want animations, just set the "animated" variable as FALSE, if it's set as false it doesn't matter what you fill the needed structs with,preferably set them as "noone" or "undefiened"
// if you want animations then set "animated" to TRUE and you MUST fill the structs correctly or else you'll get an error


function func_move 
(
	spd,			// the speed of the object [real]
	spd_def,		// the default speed of the object (set it to the same value as spd) [real]
	spd_max,		// the max soed of the object [real] 
	spd_run,
	animated,		// whether the object uses animated sprites or not (if not, you can give it a single sprite and it'll work properly) [bool]
	animated_diag,	// whether the object uses diagonal animations or not; make sure you fill in the correct fields in the structs for it to work [bool]
	animated_idle,	// whether the object uses animated sprites fir idling or a single frame [bool]
	can_collide,	// whether the object move with move_and_collide or via not, disable to use the default x and y movement [bool]
	struct_walk,	// struct containing all the sprites of the walking cycles; useless if "animated" was false (filling it doesn't affect anything in that case) [variable_struct]
	struct_idle,	// struct containing all the sprites of the idling cycles; also useless if "animated" was false (filling it doesn't affect anything in that case, too) [variable_struct]
	struct_inputs,	// struct containing inputs (unused, for now)
	collision_group // array containing all the things the object can collide with ; useless if "can_collide" was false (filling it doesn't affect anything in that case) [array]
	
)
{
	/* extra notes:
	[OPTIONAL][MANDATORY IF "animated" IS TRUE] structs' variable names: {up, down, left, right, up_right}
	[OPTIONAL][MANDATORY IF "animated_diag" IS TRUE] struct's variable names: {up_left, up_right, down_left, down_right}
	NOTE: if your left and right animations are identical, put in the structs' names normally, however you need to remove all variables with "right" or "left" in them (yes, ALL of them)
	and put the variables: (side, up_side, down_side) instead of (in order): (left and right, up_left and up_right, down_left and down_right)
	*/
	
	#region inputs
	//there's a wierd bug where if the struct_inputs is used walking down left or right becomes impossible from walking left and
	//right (while running)
	// okay so the bug only happens if the walking buttons are WASD and the running button is X
	// if you know what's wrong please tell me 
	// - Hastiry
	
	
	var input_right = vk_right
	var input_down = vk_down
	var input_up = vk_up
	var input_run = ord("C")
	
	if struct_exists(struct_inputs,"input_left") input_left = struct_inputs.input_left
	if struct_exists(struct_inputs,"input_right") input_right = struct_inputs.input_right
	if struct_exists(struct_inputs,"input_up") input_up = struct_inputs.input_up
	if struct_exists(struct_inputs,"input_down") input_down = struct_inputs.input_down
	if struct_exists(struct_inputs,"input_run") input_run = struct_inputs.input_run
	
	
	var _hor = keyboard_check(input_left) - keyboard_check(input_right)
	
	var _ver = keyboard_check(input_down) - keyboard_check(input_up)
	
	
	
	if keyboard_check(input_run)
	{
		spd = spd_run
		image_speed = 1.5 
	}
	else
	{
		spd = spd_def
		image_speed = 1
	}

	#endregion
	
	


	if ( _hor == 0 and _ver == 0 and not animated_idle)  image_speed = 0
	else image_speed = 1


	if can_collide
	{
		spd *= -1
		move_and_collide(_hor * spd,_ver * -spd,collision_group)
	
	}
	else
	{
		
		x -= _hor * spd
		y += _ver * spd
	}


	if animated
	{
		if variable_struct_exists(struct_walk,"left") and variable_struct_exists(struct_walk,"right")
		{
			
			if animated_diag and (_hor != 0 and _ver != 0) 
			{
				if (_hor > 0 and _ver > 0)
				{
					sprite_index = struct_walk.down_left
				}
				else if (_hor > 0 and _ver < 0)
				{
					sprite_index = struct_walk.up_left
				}
				
				
				else if (_hor < 0 and _ver > 0 )
				{
					sprite_index = struct_walk.down_right
				}
				else if (_hor < 0  and _ver < 0)
				{
					sprite_index = struct_walk.up_right	
				}
			}
			else if (_hor != 0 or _ver != 0 )
			{
				if (_ver > 0 ) 
				{
					sprite_index = struct_walk.down
				}
				else if (_ver < 0 )
				{
					sprite_index = struct_walk.up
				}
				else if (_hor > 0 )
				{
					sprite_index = struct_walk.left
				}
				else if (_hor < 0 ) 
				{
					sprite_index = struct_walk.right
				}
				
			}
			else 
			{
				if (sprite_index == struct_walk.right) sprite_index = struct_idle.right
				else if (sprite_index == struct_walk.left) sprite_index = struct_idle.left;
				else if (sprite_index == struct_walk.up) sprite_index = struct_idle.up;
				else if (sprite_index == struct_walk.down) sprite_index = struct_idle.down;
				else if (sprite_index == struct_walk.up_right) sprite_index = struct_idle.up_right
				else if (sprite_index == struct_walk.up_left) sprite_index = struct_idle.up_left;
				else if (sprite_index == struct_walk.down_left) sprite_index = struct_idle.down_left;
				else if (sprite_index == struct_walk.down_right) sprite_index = struct_idle.down_right;
				if (not animated_idle) image_index = 0
			}
		}
		else
		{
		// if both your left and right walk cycles are identical use this instead 
		//NOTE: the side animations MUST be faccing RIGHT for them to look accurate, the code will work normally if you put the left instead it'll just look wrong
		//NOTE: it is NOT recomended to use this over the other ones,just suply the same sprite for left and right and times the xscale by -1 when moving left in the object's
		//step event, this code is underworked and it'll need a headache to make what already works fine up there work here too
			
			if animated_diag and (_hor != 0 and _ver != 0) 
			{
				if (_hor > 0 and _ver > 0)
				{
					sprite_index = struct_walk.down_side
					
					if (sign(image_xscale) = 1) image_xscale *= -1
						
				}
				else if (_hor > 0 and _ver < 0)
				{
					sprite_index = struct_walk.up_side
					if (sign(image_xscale) = 1) image_xscale *= -1
				}
				else if (_hor < 0 and _ver > 0 )
				{
					sprite_index = struct_walk.down_side
					if (sign(image_xscale) = -1) image_xscale *= -1
				}
				else if (_hor < 0  and _ver < 0)
				{
					sprite_index = struct_walk.up_side
					if (sign(image_xscale) = -1) image_xscale *= -1
				}
			}
			if (_hor != 0 or _ver != 0 )
			{
				if (_ver > 0 ) 
				{
					sprite_index = struct_walk.down
					image_xscale = 1
				}
				else if (_ver < 0 )
				{
					sprite_index = struct_walk.up
					image_xscale = 1
				}
				else if (_hor > 0 )
				{
					sprite_index = struct_walk.side
					image_xscale = -1
				}
				else if (_hor < 0 ) 
				{
					sprite_index = struct_walk.side
					image_xscale = 1
				}
				
			}
			else 
			{
				if (sprite_index == struct_walk.side) sprite_index = struct_idle.side;
				else if (sprite_index == struct_walk.up) sprite_index = struct_idle.up;
				else if (sprite_index == struct_walk.down) sprite_index = struct_idle.down;
				else if (sprite_index == struct_walk.up_side) sprite_index = struct_idle.up_side;
				else if (sprite_index == struct_walk.down_side) sprite_index = struct_idle.down_side;
				
				if (not animated_idle) image_index = 0
			}
		}
}
	
	
}