function reset_variables()
{
	left = 0;
	
	right = 0;
	up = 0;
	down = 0;
	hmove = 0;
	vmove = 0;
}

function get_input()
{
	if(keyboard_check(ord("Q")))		// ord c'est pour reprendre la touche et pas son code ASCII
		left = 1;
	if(keyboard_check(ord("D")))
		right = 1;
	if(keyboard_check(ord("Z")))
		up = 1;
	if(keyboard_check(ord("S")))
		down = 1;
}

function calc_movement()
{
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 720); // dit si elle est vrai ou fausse car le or est sur une variable
	if(_facing ==0)
		_facing = -1;
	facing = _facing;
	
	if (hmove != 0 or vmove !=0)
	{
		// corrige les bugs de diagonales
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove
		y += vmove
	}
	
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	my_bow.image_angle = aim_dir;
}

function collision()
{
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	// get distance we want to move
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx)
	{
		if(!place_meeting(x+sign(_tx-x), y, o_walls))
			x += sign(_tx-x);
	}
	repeat(_disy)
	{
		if(!place_meeting(x, y+sign(_ty-y), o_walls))
			y += sign(_ty-y);
	}
}

function anim()
{
	if(hmove != 0 or vmove != 0)
		sprite_index = s_player_walk;
	else 
		sprite_index = s_player_idle;
}

function check_fire()
{
	if(mouse_check_button(mb_left))
	{
		if(can_fire)		// == true pas obligé si on est flemmard
		{
			can_fire = false;
			alarm[0] = fire_rate;
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			var _inst = instance_create_layer(x, y, "Arrow", o_arrow);	// le nom Arrow c'est le nom du calque
			bow_dist = 2;
			with(_inst)		// le code dedans c'est pour la fleche que je viens de creer
			{
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
	}
}