/// @description Insérez la description ici
damage = 5;
range = 200;
owner_id = noone;
knockback_time = 5;

function Explo_Bullet_die()
	// ce qui se passe quand la fleche est detruite 
{
	speed = 0;
	instance_change(o_Explosion_Bullet, false);
}




