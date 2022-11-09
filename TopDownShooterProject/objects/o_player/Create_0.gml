/// @description Insérez la description ici
walk_spd = 5;
facing = 1;	     // face right

//bow 
aim_dir = 0;
bow_dist = 8;
fire_rate = 6; // nombre de frames que j'ai besoin pour tirer ( 2 fleches par sec) pour 30 frames 
can_fire = true;
arrow_speed = 10;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

cursor_sprite = s_cursor;      // remplace le curseur de la souris par le sprite du curseur
window_set_cursor(cr_none);    // enleve le sprite de la souris 

collectRadius = 35; //zone de collection des bonbons autour du joueur