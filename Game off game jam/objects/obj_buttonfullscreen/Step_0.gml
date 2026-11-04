// Mantém o ícone sincronizado caso o modo de tela mude por outro meio.
if (window_get_fullscreen()) {
	sprite_index = spr_buttonfullscreenon;
} else {
	sprite_index = spr_buttonfullscreenoff;
}
