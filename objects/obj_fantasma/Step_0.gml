/// @description Insert description here
// You can write your code in this editor
if(spawn){
	image_yscale += spawnSpeed/150;
	image_xscale += spawnSpeed/150;
	image_angle += 10;
	if(image_yscale >= 1 or image_xscale >= 1){
		spawn = false;
		image_angle = 0;
	}
}
if(alive){
	if(!spawn){
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		speed = gSpeed / 5;
		image_xscale = (obj_player.x <= x) ? -1: 1;
	}

}else{
		
	image_yscale -= spawnSpeed/100;
	image_xscale -= spawnSpeed /100;
	image_angle -= 20;
	if(image_yscale <= 0 or image_xscale <= 0) instance_destroy();
	
}

