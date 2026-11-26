with obj_tower_parent
{
	if place_meeting(x, y, other)
	{
		if !array_contains_2D(other.towers, 0, id)
		{
			array_push(other.towers, [id, x - other.x, y - other.y])
		}
	}
}
//if a tow touches the grid, it's ID and offset are remembered


//debug
if keyboard_check(vk_left)
{
	x-=4
}
if keyboard_check(vk_right)
{
	x+=4
}
if keyboard_check(vk_up)
{
	y-=4
}
if keyboard_check(vk_down)
{
	y+=4
}


for(var i = 0; i < array_length(towers); i++)
{
	if !place_meeting(x, y, towers[i][0])
	{
		array_delete(towers, i, 1)
		//If off grid, get freed from it's reign
	}
	else
	{
		if towers[i][0].drag
		{
			towers[i][1] = towers[i][0].x - x
			towers[i][2] = towers[i][0].y - y
			//can update off when dragging
		}
		
		towers[i][0].x = round(towers[i][1]/w)*w + x + 0.5*w
		towers[i][0].y = round(towers[i][2]/h)*h + y + 0.5*h
		//move to grid.x + offset rnd to the grid size
	}
}