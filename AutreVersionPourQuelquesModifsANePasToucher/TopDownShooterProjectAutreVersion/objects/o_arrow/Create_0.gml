/// @description init wars
damage = 5;
range = 300;
owner_id = noone;
knockback_time = 5;

function arrow_die()
	// ce qui se passe quand la fleche est detruite 
{
	speed = 0;
	instance_change(o_arrow_explode, false);
}
// test github