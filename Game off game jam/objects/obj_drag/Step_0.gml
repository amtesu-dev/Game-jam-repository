


if (drag)
{
	x = mouse_x
	y = mouse_y
	//layer = layer_drag
	
	depth = depth_start - depth_change
	
	// unused vars, the goal was to try and fix a tiny problem where the objects would snap around the tiles
	//var grid = collision_circle(x,y,self.sprite_height/2,obj_grid,true,true)
	//var grid_nearest = instance_nearest(grid.x,grid.y,grid)

	if place_meeting(x,y,obj_grid)
	{
		move_snap(global.grid_size,global.grid_size)
	
	
		// diffrent grid stuff, works exactly the same as the move_snap function would
		//x = round(x / global.grid_size) * global.grid_size
		//y = round(y / global.grid_size) * global.grid_size

	}
}
else 
{
	depth = depth_start
	//layer = layer_not_drag
}