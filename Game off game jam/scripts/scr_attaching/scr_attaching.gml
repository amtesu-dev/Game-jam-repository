function func_add_attached(_inst)
{
	
	
	
	array_push(arr_attached,
	{
		inst: _inst,
		leng: point_distance(x,y,_inst.x,_inst.y),
		dir: point_direction(x,y,_inst.x,_inst.y),
		angle: _inst.image_angle
		
	})
	
	
	
	
	
}