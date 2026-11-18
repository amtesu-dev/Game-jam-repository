
draw_self();

draw_circle(x,y,radius,true)
if (can_draw)
{
	func_draw_set(1,c_yellow,function()
	{
		draw_rectangle(_tar.bbox_left,_tar.bbox_top,_tar.bbox_right,_tar.bbox_bottom,true)
	})
}

var hp_amount = (hp / hp_max) * 100;

var spr_half = sprite_width / 2;

// draws health bellow the enemies
draw_healthbar(
	x - spr_half,
	y + 32,
	x + spr_half,
	y + 34,
	hp_amount,
	c_red,
	c_gray,
	c_lime,
	0,
	true,
	false
)