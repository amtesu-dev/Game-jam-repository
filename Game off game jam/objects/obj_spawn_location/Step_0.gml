
direction = image_angle


spawn_frames = random_range(20,100)

var dir = spawner_dir

if (evil_spawns) dude = obj_dude_enemy
else dude = obj_dude_friend

if (spawn_timer <= 0)
{
	spawn_timer = spawn_frames
	instance_create_layer(x,y,"lay_instances",dude,
	{
		direction: dir,
	})
}

spawn_timer --
