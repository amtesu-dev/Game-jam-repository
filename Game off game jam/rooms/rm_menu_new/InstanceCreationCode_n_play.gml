

//var _settings_layer = global.settings_layer;

//if (_settings_layer == -1 || !layer_get_visible(_settings_layer))
//{
//	can_ex_code = true
//}

//if layer_get_visible(_settings_layer)
//{
//	can_ex_code = false
//}

//can_ex_code = global.can_ex_code_first_layer

//if (not layer_get_visible(_settings_layer)) can_ex_code = true;
//else can_ex_code = false;

ex_code_lmb = function()
{
	/// Only play if the lay_second isnt there.
	room_goto(global.game_levels[0]);
}