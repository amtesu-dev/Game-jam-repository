// change fullscreen mode
var _fullscreen = !window_get_fullscreen();
window_set_fullscreen(_fullscreen);

// Atualiza o ícone para refletir o modo escolhido.
if (_fullscreen) {
	sprite_index = spr_buttonfullscreenon;
} else {
	sprite_index = spr_buttonfullscreenoff;
}
