event_inherited()

var cannon_dir = direction






 
image_angle = cannon_dir

if (keyboard_check_pressed(vk_space)) bullet_num ++
 
if (bullet_num >= 4) bullet_num = 0


if (drag) can_shoot = false
else can_shoot = true


if (shoot_delay != 0 ) shoot_delay --;


if (shoot_delay <= 0) shooting = true
else shooting = false

if (can_shoot)
{

	if (shooting) and (shoot_delay <= 0)
	{
		switch (bullet_num)
		{
			
			case 0:
			
			break;
			
			case 1:
				
			shoot(bullet,bullet_spd,bullet_dmg,cannon_dir,x,y)
				
			break;
			
			
			// turns out making bullets shooting side by side is actually not very easy
			case 2:
			
			var gap = 8
			
			if (direction >= 0 and direction <= 180) or (direction >= 180 and direction <= 270)
			{
			shoot(bullet,bullet_spd,bullet_dmg,cannon_dir,x,y + gap)
			shoot(bullet,bullet_spd,bullet_dmg,cannon_dir,x,y - gap)
			}
			else if (direction >= 90 and direction <= 270 ) or (direction >= 270 and direction <= 360)
			{
			shoot(bullet,bullet_spd,bullet_dmg,cannon_dir,x + gap,y)
			shoot(bullet,bullet_spd,bullet_dmg,cannon_dir,x - gap,y)
				
			}
			break;
			
	
			
			
			case 3: 
				// i think this should be shortened into a for loop, sadly i know no such thing
				// using a for loop only created more problems, this'll do "for" now

				var dir1 = cannon_dir - 45
				var dir2 = cannon_dir + 45
	
				var dir = cannon_dir
				
				
				shoot(bullet,bullet_spd,bullet_dmg,dir,x,y)
				
				dir = dir1
				
				shoot(bullet,bullet_spd,bullet_dmg,dir,x,y)
				
		
				dir = dir2
				
				shoot(bullet,bullet_spd,bullet_dmg,dir,x,y)
				
	
			break;
	 
	

		}
		shoot_delay = shoot_frames
		shooting = false
	}
}

if instance_exists(obj_enemy)
{
	direction = point_direction(x,y,obj_enemy.x,obj_enemy.y)
	
}

