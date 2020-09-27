/// @description Insert description here
// You can write your code in this editor
image_xscale -= 0.1/60;
image_yscale -= 0.1/60;
if(image_xscale <= 0 or image_yscale <= 0){
	alive = false;
	instance_destroy();
}