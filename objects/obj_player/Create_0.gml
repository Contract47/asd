health = 100;

phy_fixed_rotation=true;

whipping = false;
hspd = 5;
vspd = 5;
grav = 5;
jump_height = 100;
jump_y = y;

running		= false;
in_air		= true;  // changed during floor collision
doublejump	= true;
jump_cnt    = 0;

weapon = instance_create_layer(x,y,"Instances_Hidden",obj_gun1);