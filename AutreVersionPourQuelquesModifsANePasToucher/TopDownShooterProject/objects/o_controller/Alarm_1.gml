/// @description boucle de spawn

alarm[1] = alarmSpawnTime;

//penser à ajouter une pause si on a un menu d'upgrade? (si on en met un)
   
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

//selon la zone délimitée dans instance_activate, les "bounding boxes" des entités subsistent (nombres à la louche)
instance_activate_region(_vx - 120, _vy - 120, _vw + 120, _vh + 120, 1); 
//selon la zone délimitée dans instance_deactivate, les "bounding boxes" des entités disparaissent
instance_deactivate_region(_vx - 170, _vy - 170, _vw + 170, _vh + 170, 0,1);
//dans les deux cas ce sera à l'intérieur de ces zones (1 à la fin correspond à inside)

repeat(1){
 var dir = irandom_range(0,360);
 var XX  = o_Player.x + lengthdir_x(220, dir);
 var YY  = o_Player.y + lengthdir_y(220, dir); 
 
 instance_create_layer(XX, YY, "Instances", o_goblin ); //les gobelins apparaitront dans une zone hasardeuse spécifique autour du joueur
}


