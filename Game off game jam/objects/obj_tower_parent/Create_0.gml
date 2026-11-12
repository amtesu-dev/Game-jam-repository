// Mantém compatibilidade com o código da torre e com itens criados pela loja.
// A loja pode passar {drag: true}; não sobrescrevemos esse pedido.
// hey buddy, can we NOT right comments in brazilian? it'd be awsome -Hastiry



if (!variable_instance_exists(id, "drag")) {
	drag = false;
}

enemies = [obj_dude_enemy]	//no plan to use it
friends = [obj_dude_friend]	//no plan to use it

// bullet variabkes
bullet = obj_bullet; 
bullet_spd = 10;
bullet_num = 1;

//shooting variables
can_shoot = true;
spread_shoot = false;
shooting = true;
shoot_delay = 0;
//shoot_frames = 30;


//target variables
target_list = [obj_dude_enemy];
target = noone;




// direction variables

//image_follow_dir = false;	
// why did i set this to false here???? this variable messed me up good. 
//i'm leaving this here incase i remember anything about it please forget about this comment 
//(if you're not me that is)

def_dir = 100;	//the default direction the tower will be set to if there are no targets (or of the destination is undefiended)
// so def_dir is kind of useless, still better left like this as it helps avoid errors
dest = undefined; // the destination angle that the object will be using, make sure it is NEVER left unset (if you're using it, that is)


// excute code
ex_shoot = function(){}	//the code that is run whenever you shoot


locked = false







//ts_shoot = time_source_create(time_source_game,60,time_source_units_frames,ex_shoot())
// no plan on using this timesource yet