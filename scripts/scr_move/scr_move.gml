// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(x,y){
var layer_id = layer_tilemap_get_id(layer_get_id("Tile_Wall"));
			  
	if(keyboard_check(ord("D"))){

		obj_player.sprite_index = spr_playerRR;
		var meeting = tilemap_get_at_pixel(layer_id, x + pSpeed,y);
		if(!meeting) x += pSpeed;

	}else if (keyboard_check(ord("A"))){
	
		obj_player.sprite_index = spr_playerRL;
		var meeting = tilemap_get_at_pixel(layer_id, x - pSpeed,y);
		if(!meeting) x -= pSpeed;
	}
	if(keyboard_check(ord("W"))){
	
		obj_player.sprite_index = spr_playerRU;
		var meeting = tilemap_get_at_pixel(layer_id, x ,y - pSpeed);
		if(!meeting) y -= pSpeed;
	
	}else if ( keyboard_check(ord("S"))){
	
		obj_player.sprite_index = spr_playerRD;
		var meeting = tilemap_get_at_pixel(layer_id, x ,y + pSpeed);
		if(!meeting) y += pSpeed;
	
	}
	if(keyboard_check_released(ord("D"))){
		obj_player.sprite_index = spr_playerSR;
	}
	if(keyboard_check_released(ord("A"))){
		obj_player.sprite_index = spr_playerSL;
	}
	if(keyboard_check_released(ord("W"))){
		obj_player.sprite_index = spr_playerSU;
	}
	if(keyboard_check_released(ord("S"))){
		obj_player.sprite_index = spr_playerSD;
	}
	return [x,y];
}