/// @description Collecte
//les bonbons présents dans le radius sont attirés dans le radius vers le joueur, sans exclusion et sans prendre en compte la distance
var _list = ds_list_create();
var _num = collision_circle_list(o_Player.x, o_Player.y, o_Player.collectRadius, o_treat, false, true, _list, false)
if (_num > 0)
{
	for (var i = 0; i < _num; ++i;)
	{
		_list[|i].canFly = true; //[|i] choisi TOUS les bonbons de la liste et les setups en "true"
	}
}

ds_list_destroy(_list);


alarm[2] = alarmTime2;