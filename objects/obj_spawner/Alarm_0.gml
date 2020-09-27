/// @description Insert description here
// You can write your code in this editor
ghost = irandom_range(0,2);
var temp ;
if(ghost == 0){
	temp = instance_create_layer(x,y,"ghost",obj_gGreen);
}else if( ghost == 1){
	temp = instance_create_layer(x,y,"ghost",obj_gPurple);
}else if ( ghost == 2){
	temp = instance_create_layer(x,y,"ghost",obj_gRed);
}
temp.x = random_range(37,975);
temp.y = random_range(106,431);
limit = (score < 100) ? 300 - score : 150;
alarm[0] = irandom_range(30,limit);