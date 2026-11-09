// Mantém compatibilidade com o código da torre e com itens criados pela loja.
// A loja pode passar {drag: true}; não sobrescrevemos esse pedido.
// hey buddy, can we NOT right comments in brazilian? it'd be awsome -Hastiry



if (!variable_instance_exists(id, "drag")) {
	drag = false;
}

enemies = [obj_dude_enemy]	//no plan to use it
friends = [obj_dude_friend]	//no plan to use it

bullet = obj_bullet; 
bullet_spd = 10;
bullet_num = 1;


radius = 128;

can_shoot = true;
spread_shoot = false;
shooting = true;
shoot_delay = 0;
shoot_frames = 30;

target_list = [obj_dude_enemy];
target = noone;


//ts_shoot = time_source_create(time_source_game,60,time_source_units_frames,ex_shoot())
// no plan on using this timesource yet

image_follow_dir = false;

dest = undefined; // the destination angle that the object will be using, make sure it is NEVER left unset (if you're using it, that is)

ex_shoot = function(){}	//the code that is run whenever you shoot
