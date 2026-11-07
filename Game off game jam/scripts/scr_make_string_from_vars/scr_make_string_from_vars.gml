function func_make_string_from_vars()
{
	var _str = "";
	for (var i = 0; i < argument_count; i ++)
	{
		_str += argument[i] + ": " + string(self[$ argument[i]]) + "/n"
		
	}
	return _str;

}