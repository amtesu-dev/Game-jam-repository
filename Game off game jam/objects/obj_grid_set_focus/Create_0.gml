

focused_tile = noone;

function func_set_focus(_tile)
{
	if (focused_tile != _tile) func_clear_focus();
	focused_tile = _tile;
	with(focused_tile) hovered = true;
}

function func_clear_focus()
{
	with(focued_tile) hovered = false;
	focused_tile = noone;
}



