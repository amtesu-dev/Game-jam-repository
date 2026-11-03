
var char_speed_change = variable_clone(char_speed)


if (current_message < 0 ) exit;

//var str = dialog[messages[current_message].msg];
var str = messages[current_message].msg;

if (current_char < string_length(str)) // there's still more characters not written down
{
	current_char += char_speed * (1 + (keyboard_check(input_key)));
	draw_message = string_copy(str,0,current_char);
}
else if (keyboard_check_pressed(input_key)) // the message was fully written
{
	current_message ++;
	if (current_message >= array_length(messages)) //reached last dialog in the current message
	{
		instance_destroy();
	}
	else // didn't reach last dialog in the current message
	{
		current_char = 0; 
	}
}

if keyboard_check_pressed(input_key_skip)
{
	char_speed = string_length(str)
	
}
else char_speed = 0.5

