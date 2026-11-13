function func_draw_set(alpha,colour,callback)
{
	var _colour = draw_get_colour();
	var _alpha = draw_get_alpha();
	
	draw_set_colour(colour);
	draw_set_alpha(alpha);
	
	callback();
	
	draw_set_colour(_colour);
	draw_set_alpha(_alpha);
}

// gets the alpha and colour and sets them to their defaults after running the callback