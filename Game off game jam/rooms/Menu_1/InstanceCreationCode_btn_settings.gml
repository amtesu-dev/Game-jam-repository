_settings_layer = global.settings_layer;

//if (_settings_layer != -1) can_ex_code = true
//else can_ex_code = false

ex_code_lmb = function()
{
	/// Mostra a segunda layer do menu (painel de configurações).
	layer_set_visible(_settings_layer, true);

}