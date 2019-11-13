if(keyboard_check(vk_shift)){
	running = true;
}else{
	running = false;	
}

if(!whipping){
	
	if(keyboard_check_pressed(vk_space)){
		//sprite_index = spr_char_whipping;
		//whipping = true;
		weapon.shoot = [x,y];
		exit;
	}

	if(keyboard_check(vk_right)){
		phy_speed_x		 = running? hspd+5 : hspd;
		sprite_index     = spr_char_walking;		
		image_xscale     = abs(image_xscale);
		direction		 = 0;
		weapon.direction = 0;
	}else if(keyboard_check(vk_left)){
		phy_speed_x		 = -(running? hspd+5 : hspd);
		sprite_index	 = spr_char_walking;			
		image_xscale	 = -abs(image_xscale);
		direction		 = 180;
		weapon.direction = 180;
	}else{
		sprite_index = spr_char_idle;
	}
	
	if(keyboard_check_pressed(vk_up)){
		//vspeed = -vspd;
		//jump_y = y;
		phy_linear_velocity_y = -400;

	}
	
	if(keyboard_check(ord("1"))){
		with(weapon){ instance_destroy(); }
		weapon = instance_create_layer(x,y,"Instances_Hidden",obj_gun1);		
		weapon.direction = image_xscale < 0? 180 : 0;
	}else if(keyboard_check(ord("2"))){
		with(weapon){ instance_destroy(); }
		weapon = instance_create_layer(x,y,"Instances_Hidden",obj_gun2);
		weapon.direction = image_xscale < 0? 180 : 0;
	}
}

if(vspeed != 0 && jump_y - y >= jump_height){
	gravity = 1;
}