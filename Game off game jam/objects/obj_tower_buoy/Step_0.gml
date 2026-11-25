event_inherited()

if keyboard_check_pressed(vk_enter)
{
	hp --
}

if hp >= 5
{
	sprite_index = spr_buoy_notDamaged
}
if hp <= 1
{
	sprite_index = spr_buoy_vDamaged
}
else if hp < 3
{
	sprite_index = spr_buoy_slDamaged
}