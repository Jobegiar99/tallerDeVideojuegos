/// @description Shoot
// You can write your code in this editor
if(!cooldown){
	var projectile = instance_create_layer(x,y,"projectiles",obj_player_projectile);
	projectile.direction = point_direction(x,y, mouse_x, mouse_y);
	projectile.speed = distance_to_point(mouse_x,mouse_y) / 60;	
	alarm[0] = cooldownTime; 
	cooldown = true;
}