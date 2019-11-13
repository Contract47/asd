firing_timeout--;

if(shoot != pointer_null && firing_timeout <= 0){
	// shoot = [x,y];
	var bullet = instance_create_layer(shoot[0],shoot[1],"Instances",obj_bullet);
	bullet.direction = direction;
	bullet.speed     = bullet_speed;		
	firing_timeout	 = firing_time_max;
	shoot			 = pointer_null;
}