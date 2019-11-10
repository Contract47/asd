if(!whipping){
	
	if(keyboard_check_pressed(vk_space)){
		sprite_index = spr_char_whipping;
		whipping = true;
		exit;
	}

	if(keyboard_check(vk_right)){
		x += hspd;
		sprite_index = spr_char_walking;		
		image_xscale = abs(image_xscale);
	}else if(keyboard_check(vk_left)){
		x -= hspd;
		sprite_index = spr_char_walking;			
		image_xscale = -abs(image_xscale);
	}else if(keyboard_check(vk_up)){
		vspeed = -vspd;
		jump_y = y;
	}else{
		sprite_index = spr_char_idle;
	}
}

if(vspeed != 0 && jump_y - y >= jump_height){
	gravity = 1;
}