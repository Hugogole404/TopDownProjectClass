global.ActualPoint = 15;
global.color = make_color_rgb(86, 130, 3);



function AddPoint()
{
	global.ActualPoint += 1;
}
function AddPointEnnemis()
{
	global.ActualPoint += 1;
}
function DeletePointEnnemis()
{
	global.ActualPoint -= 5;
}
//test github

function DeletePointsOverTime()
{
	if global.ActualPoint <= 0
	{
		can_lose_points = false
	}
	if can_lose_points == true
	{
		global.ActualPoint -= 1
		can_lose_points = false
		alarm[8] = points_loss_rate;
		
	}
	
}

function Death()
{
	if start_points == true
	{
		alarm[6] = 40
	}
	if(start_points == false and can_lose_points == false)
	{
		global.ActualPoint = 0
	}
}

function anim_death()
{
	
	if(global.ActualPoint = 0 and can_die = true)
	{
	sprite_index = s_player_dead
	can_die = false
	alarm[11] = 60
	}
	
}