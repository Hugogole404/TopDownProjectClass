/// @description Statistiques & autres
walk_spd = 5;
facing = 1;		// face right
can_die = true


fire_rate_explosions = 60;

//bow 
aim_dir = 0;
bow_dist = 8;
fire_rate = 6; // nombre de frames que j'ai besoin pour tirer ( 2 fleches par sec) pour 30 frames 
can_fire = true;
arrow_speed = 10;

my_bow = instance_create_layer(x, y, "Instances", o_bow);

cursor_sprite = s_cursor;      // remplace le curseur de la souris par le sprite du curseur
window_set_cursor(cr_none);    // enleve le sprite de la souris 

//zone de collection des bonbons autour du joueur
collectRadius = 35; 

//système de bonbons/xp
treat = 0;
treatNext = 5; //tous les 5 bonbons on monte de niveau, voir pour incrémenter au fur et à mesure plutôt que stable
