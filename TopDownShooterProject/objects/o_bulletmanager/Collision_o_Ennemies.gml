global.points += 25;

hit = instance_place(x,y,o_ennemies); // si le projectile chevauche le sprite de l'ennemi

if (hit != noone) // donc si on touche un ennemi
{
	hit.hp -=1;
	instance_destroy();
}