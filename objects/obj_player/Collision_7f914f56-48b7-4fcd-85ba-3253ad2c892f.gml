health -= other.damage;

phy_linear_velocity_x = -(other.x-x)*4;
phy_linear_velocity_y = -(other.y-y)*4;
/*
if(health <= 0){
	instance_destroy();
	// TODO: you died
}
*/