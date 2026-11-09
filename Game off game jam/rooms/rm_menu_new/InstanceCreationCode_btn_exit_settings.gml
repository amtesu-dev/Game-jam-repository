
_settings_layer = global.settings_layer;
//if (_settings_layer != -1)
//{
//	can_ex_code = true
//}
//else can_ex_code = false

ex_code_lmb = function()
{	
	/// Esconde a segunda layer do menu ao clicar em sair.
	layer_set_visible(_settings_layer, false);
}