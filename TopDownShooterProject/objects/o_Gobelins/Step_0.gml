 /// @description citrouille lancée 
 if (image_index >= 2 and attacked == false) //après une certaine frame, le projectile se lance
{
	attacked = true;
	
	var pumpkin = instance_create_layer(x,y-15, layer, o_Pumpkin);
	pumpkin.speed = random_range(3,5);
	pumpkin.direction = 45 + random_range(-5,5);
	
	pumpkin.gravity = 0.1;
	pumpkin.gravity_direction = 270;
	pumpkin.friction = 	0.015; //reduction du rebond par la vitesse
	
}

//éliminer si hp = 0
if (hp == 0)
	instance_destroy();
