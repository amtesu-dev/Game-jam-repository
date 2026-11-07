

if place_meeting(x,y,obj_dude_enemy)
{
	
	var nearest_enemy = instance_nearest(x,y,obj_dude_enemy)
	//if (fragile) instance_destroy();
	destroy_bullet = true
	func_deal_dmg(dmg,nearest_enemy)
	show_debug_message(string(func_deal_dmg(dmg,nearest_enemy)))
	// note that the "dmg" variable is set by the obj_tower_parent after it creates a bullet
	
	
}


if (destroy_bullet) instance_destroy();