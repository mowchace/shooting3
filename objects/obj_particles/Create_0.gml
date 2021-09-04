/// @description
partSys = part_system_create();

// Exhaust(dash smoke)
/*
switch(room){
	case rm_game:pc = c_white;break;
}
*/
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust,spr_exhaust,false,false,false);
part_type_size(partTypeExhaust,.4,.4,.05,0);
part_type_color1(partTypeExhaust,c_white);
part_type_alpha2(partTypeExhaust,1,0);
part_type_life(partTypeExhaust,20,20);

// Explode
partTypeExplode = part_type_create();
part_type_sprite(partTypeExplode,spr_bomb,false,false,false);
part_type_size(partTypeExplode,.4,.4,.05,0);
part_type_alpha2(partTypeExplode,1,0);
part_type_life(partTypeExplode,20,20);
