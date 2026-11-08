



function func_shoot (bullet,bullet_spd,bullet_dmg,tower_dir,x_pos,y_pos)
{
	instance_create_layer(x,y,"lay_bullets",bullet,{
			direction: tower_dir,
			image_angle: tower_dir,
			speed: bullet_spd,
			dmg: bullet_dmg,
			x: x_pos ,
			y: y_pos
			})
	
}

function func_shoot_mouse(follow_mouse,input_shoot,spread_shoot,shoot_with_mouse,ex_shoot,tower) //shooting with the mouse, needs modifications to work properly, better off not used
{

	if follow_mouse //if the object should be looking at the mouse
	{
		tower.dest = point_direction(x,y,mouse_x,mouse_y)
	}

	if shoot_with_mouse // if the object should be shooting with the mouse
	{
		if mouse_check_button_pressed(input_shoot)
		{
			if (ex_shoot != undefined)
			{
				ex_shoot();
			}
			else 
			{
				
			}
			if not spread_shoot
			{
				instance_create_depth(x,y,depth + 10 ,obj_bullet, {
				direction: cannon_dir,
				speed: bullet_spd,
				dmg: tower.bullet_dmg
				})
			}
			else
			{
				var dir1 = cannon_dir - 30
				var dir2 = cannon_dir +30
		
				var dir = cannon_dir
		
				instance_create_depth(x,y,depth + 10 ,obj_bullet, {
				direction: dir,
				speed: bullet_spd
				})
				dir = dir1
				instance_create_depth(x,y,depth + 10 ,obj_bullet, {
				direction: dir,
				speed: bullet_spd
				})
		
				dir = dir2
				instance_create_depth(x,y,depth + 10 ,obj_bullet, {
				direction: dir,
				speed:bullet_spd
				})
			}
		}
	}
}


