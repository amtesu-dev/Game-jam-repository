
var _settings_layer = global.settings_layer

//if (not layer_get_visible(_settings_layer))
//{
//	can_ex_code = false
//}
//else can_ex_code = true

ex_code_step = function()
{
	// Mantém o ícone sincronizado caso o modo de tela mude por outro meio.
	if (window_get_fullscreen()) {
		sprite_index = spr_button_full_screen_on;
	} else {
		sprite_index = spr_button_full_screen_off;
	}

}

ex_code_lmb = function()
{
	// change fullscreen mode
	var _fullscreen = !window_get_fullscreen();
	window_set_fullscreen(_fullscreen);

	// Atualiza o ícone para refletir o modo escolhido.
	if (_fullscreen) {
		sprite_index = spr_button_full_screen_on;
	} else {
		sprite_index = spr_button_full_screen_off;
	}

}