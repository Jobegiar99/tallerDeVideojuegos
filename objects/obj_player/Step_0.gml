/// @description
// You can write your code in this editor

if( alive ){
	var position = scr_move(x,y);	
	x = position[0];
	y = position[1];
}else{
	
	image_angle += 10;
	image_xscale -= 0.6/60;
	image_yscale -= 0.6/60;
	if(image_xscale <= 0) game_restart();
	
}