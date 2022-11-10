/// @description correct bow
var _depth = (aim_dir > 0 and aim_dir < 180);   // recup un true ou false (1 ou 0)
my_bow.depth = depth + _depth;

my_bow.x = x + lengthdir_x(bow_dist, aim_dir); // place l'arc sur un cercle pos x 
my_bow.y = y + lengthdir_y(bow_dist, aim_dir); // place l'arc sur un cercle pos y

bow_dist = lerp(bow_dist, 8, 0.1);