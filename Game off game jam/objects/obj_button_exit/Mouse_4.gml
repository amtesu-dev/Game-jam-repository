/// Only exit the game if the lay_second isnt there.
var _settings_layer = layer_get_visible("secondlayer");
if (_settings_layer == -1 || !layer_get_visible(_settings_layer)) {
	game_end();
}
