/// Only exit the game if the secondlayer isnt there.
var _settings_layer = layer_get_id("secondlayer");
if (_settings_layer == -1 || !layer_get_visible(_settings_layer)) {
	game_end();
}
