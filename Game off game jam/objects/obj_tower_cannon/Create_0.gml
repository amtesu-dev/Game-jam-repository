event_inherited();

cannon_dir = direction



ex_shoot = function() 
{
		switch (bullet_num)
		{
			
			case 0:
			
			break;
			
			case 1:
				
				func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,cannon_dir,x,y)
				
			break;
			
			
			// turns out making bullets shooting side by side is actually not very easy
			case 2:
			
				var gap = 8
			
				if (direction >= 0 and direction <= 180) or (direction >= 180 and direction <= 270)
				{
					func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,cannon_dir,x,y + gap)
					func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,cannon_dir,x,y - gap)
				}
				else if (direction >= 90 and direction <= 270 ) or (direction >= 270 and direction <= 360)
				{
					func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,cannon_dir,x + gap,y)
					func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,cannon_dir,x - gap,y)	
				}
			break;
			
	
			
			
			case 3: 
				// i think this should be shortened into a for loop, sadly i know no such thing
				// using a for loop only created more problems, this'll do "for" now

				var dir1 = cannon_dir - 45
				var dir2 = cannon_dir + 45
	
				var dir = cannon_dir
				
				
				func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,dir,x,y)
				
				dir = dir1
				
				func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,dir,x,y)
				
		
				dir = dir2
				
				func_shoot(bullet,bullet_spd,bullet_dmg,bullet_depth,dir,x,y)
				
	
			break;
	 
	

		}
}