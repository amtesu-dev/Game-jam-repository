// Mantém o ícone sincronizado caso o modo de tela mude por outro meio.
if (window_get_fullscreen()) {
	sprite_index = spr_button_full_screen_on;
} else {
	sprite_index = spr_button_full_screen_off;
}
