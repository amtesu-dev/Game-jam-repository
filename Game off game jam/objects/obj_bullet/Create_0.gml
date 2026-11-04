// Inherit the parent event
event_inherited();

ex_no_hp = function() 
{
	if (fragile) instance_destroy(self);
	
	audio_play_sound(snd_hurt1,0,false)
	
	
}
