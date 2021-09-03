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
part_type_color3(partTypeExhaust,c_white,c_fuchsia,c_purple);
part_type_alpha3(partTypeExhaust,1,1,0);
part_type_life(partTypeExhaust,20,20);
