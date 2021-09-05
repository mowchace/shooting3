/// @description
partSys = part_system_create();
part_system_depth(partSys,10)

// Exhaust(dash smoke)
/*
switch(room){
	case rm_game:pc = c_white;break;
}
*/
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust,spr_exhaust,false,false,true);
part_type_size(partTypeExhaust,.4,.4,.05,0);
part_type_color1(partTypeExhaust,c_white);
part_type_alpha2(partTypeExhaust,1,0);
part_type_life(partTypeExhaust,20,20);

// Explode
partTypeExplode = part_type_create();
part_type_sprite(partTypeExplode,spr_bomb,true,true,true);
part_type_size(partTypeExplode,.1,1,.05,0);
part_type_alpha2(partTypeExplode,1,0);
part_type_life(partTypeExplode,5,10);

// Bullet ammo
partTypeArmo = part_type_create();
part_type_sprite(partTypeArmo,spr_bullet,false,false,false);
part_type_size(partTypeArmo,.5,.5,0,0);
part_type_orientation(partTypeArmo,0,270,0,1,0)
part_type_gravity(partTypeArmo, 0.1, 270);
part_type_alpha3(partTypeArmo,1,1,0);
part_type_life(partTypeArmo,20,20);