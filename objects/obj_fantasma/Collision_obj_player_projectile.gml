/// @description Insert description here
// You can write your code in this editor
if(alive and !spawn){
	gLife--;
	sndId = irandom_range(0,2);
	switch(gLife){
		case 0:{
			
			alive = false; 
			score += 1 ;
			break;
			
		}case 1: sprite_index = spr_skullGreen; break;
		case 2: sprite_index = spr_skullPurple; break;
		
	}
	switch(sndId){
		case 0: audio_play_sound(snd_damageA,1,false); break;
		case 1: audio_play_sound(snd_damageB,1,false); break;
		case 2: audio_play_sound(snd_damageC,1,false); break;
	}
	
}