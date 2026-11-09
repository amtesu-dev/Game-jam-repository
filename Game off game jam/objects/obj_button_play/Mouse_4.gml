/// Only play if the lay_second isnt there.
var _settings_layer = layer_get_visible("secondlayer");
if (_settings_layer == -1 || !layer_get_visible(_settings_layer)) {
	room_goto(rm_1);
}
