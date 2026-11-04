// Mantém compatibilidade com o código da torre e com itens criados pela loja.
// A loja pode passar {drag: true}; não sobrescrevemos esse pedido.
// hey buddy, can we NOT right comments in brazilian? it'd be awsome -Hastiry
if (!variable_instance_exists(id, "drag")) {
	drag = false;
}

enemies = [obj_dude_enemy]
friends = [obj_dude_friend]

bullet = obj_bullet; 
bullet_spd = 10;
bullet_num = 1;


can_shoot = true
spread_shoot = false
shooting = true;
shoot_delay = 0;
shoot_frames = 30;



ex_shoot = function(){}	//the code that is run whenever you shoot
