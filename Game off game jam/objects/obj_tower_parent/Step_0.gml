//var cannon_dir = direction






 
//image_angle = cannon_dir


if (drag) can_shoot = false
else can_shoot = true


if (shoot_delay != 0 ) shoot_delay --;


if (shoot_delay <= 0) shooting = true
else shooting = false

if (can_shoot)
{

	if (shooting) and (shoot_delay <= 0)
	{
		ex_shoot()
		
		shoot_delay = shoot_frames
		shooting = false
	}
}

if instance_exists(obj_dude_enemy)
{
	direction = point_direction(x,y,obj_dude_enemy.x,obj_dude_enemy.y)
	
}

