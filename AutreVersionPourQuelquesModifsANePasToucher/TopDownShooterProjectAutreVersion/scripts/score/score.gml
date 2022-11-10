global.ActualPoint = 0;
global.color = make_color_rgb(86, 130, 3);


function AddPoint()
{
	global.ActualPoint += 10;
}
function AddPointEnnemis()
{
	global.ActualPoint += 25;
}
function DeletePointEnnemis()
{
	global.ActualPoint -= 30;
}
//test github