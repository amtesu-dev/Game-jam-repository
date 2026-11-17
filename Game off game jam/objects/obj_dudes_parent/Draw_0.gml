
draw_self();

draw_circle(x,y,radius,true)
if (can_draw)
{
	func_draw_set(1,c_yellow,function()
	{
		draw_rectangle(_tar.bbox_left,_tar.bbox_top,_tar.bbox_right,_tar.bbox_bottom,true)
	})
}
