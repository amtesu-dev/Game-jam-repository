// change fullscreen mode
var _fullscreen = !window_get_fullscreen();
window_set_fullscreen(_fullscreen);

// Atualiza o ícone para refletir o modo escolhido.
if (_fullscreen) {
	sprite_index = spr_button_full_screen_on;
} else {
	sprite_index = spr_button_full_screen_off;
}
