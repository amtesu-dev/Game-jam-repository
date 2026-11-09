/// Esconde a segunda layer do menu ao clicar em sair.
var _settings_layer = layer_get_visible("secondlayer");
if (_settings_layer != -1) {
	layer_set_visible(_settings_layer, false);
}
