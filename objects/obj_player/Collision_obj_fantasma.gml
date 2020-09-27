/// @description Insert description here
// You can write your code in this editor
if ( obj_fantasma.alive ) lives--;
if(lives == 0){
	audio_stop_all();
	alive = false;
}