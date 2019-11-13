if(fired){
	physics_apply_force(x,y,direction==0? speed : -speed,0);
	fired = false;
}

// defy gravity
physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100*-1)