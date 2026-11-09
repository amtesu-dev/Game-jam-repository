
if (update_drag)
{
	scr_drag_update(); //update the dragging process
}


if keyboard_check_pressed(ord("R"))
{
	room_restart();
}

if keyboard_check_pressed(vk_escape)
{
	game_restart()
}


if (ex_code_step != undefined)
{
	ex_code_step();
}


//var number = 23

//draw_text( 40,231,func_make_string_from_vars("number"))

//number --

//show_debug_message(func_make_string_from_vars("number"))

//audio_play_sound(snd_hurt1,0,false)










