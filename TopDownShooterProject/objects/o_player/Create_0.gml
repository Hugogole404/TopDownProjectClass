/// @description Insérez la description ici
walk_spd = 8;
facing = 1;	     // face right

//bow 
aim_dir = 0;
bow_dist = 8;
fire_rate = 30; // nombre de frames que j'ai besoin pour tirer ( 2 fleches par sec)
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

cursor_sprite = s_cursor;      // remplace le curseur de la souris par le sprite du curseur
window_set_cursor(cr_none);    // enleve le sprite de la souris 