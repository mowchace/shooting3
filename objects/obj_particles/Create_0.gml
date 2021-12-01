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
part_type_size(partTypeExplode,1,3,.05,0);
part_type_alpha2(partTypeExplode,1,0);
part_type_life(partTypeExplode,5,10);

// gunflash
partTypegunflash = part_type_create();
part_type_sprite(partTypegunflash,spr_gunflash,true,false,false);
part_type_size(partTypegunflash,.7,1.3,0,0);
part_type_alpha3(partTypegunflash,1,1,0);
part_type_life(partTypegunflash,5,5);

// Bullet ammo
partTypeArmmo = part_type_create();
part_type_sprite(partTypeArmmo,spr_bullet,false,false,false);
part_type_size(partTypeArmmo,.5,.5,0,0);
part_type_orientation(partTypeArmmo,0,270,0,1,0)
part_type_gravity(partTypeArmmo, 0.1, 270);
part_type_alpha3(partTypeArmmo,1,1,0);
part_type_life(partTypeArmmo,20,20);

// gunhit
partTypegunhit = part_type_create();
part_type_sprite(partTypegunhit,spr_gunhit,true,false,false);
part_type_size(partTypegunhit,.5,1.5,0,0);
part_type_life(partTypegunhit,5,5);

// Blad
partTypeBlad = part_type_create();
part_type_sprite(partTypeBlad,spr_blad,false,true,true);
part_type_size(partTypeBlad,1,2,.1,0);
part_type_alpha3(partTypeBlad,.1,0.8,0);
part_type_life(partTypeBlad,20,30);

// Rock_dust
partTypeRock= part_type_create();
part_type_sprite(partTypeRock,spr_rock_dust,false,true,true);
part_type_size(partTypeRock,1,1,0,0);
part_type_direction(partTypeRock,0,359,0,0);
part_type_speed(partTypeRock,1,2,.1,0);
part_type_orientation(partTypeRock,0,270,0,1,0)
part_type_gravity(partTypeRock, 0.1, 270);
part_type_alpha3(partTypeRock,1,1,0);
part_type_life(partTypeRock,20,20);

// Tree_dust
partTypeTree= part_type_create();
part_type_sprite(partTypeTree,spr_tree_dust,false,true,true);
part_type_size(partTypeTree,1,1,0,0);
part_type_direction(partTypeTree,0,359,0,0);
part_type_speed(partTypeTree,1,2,.1,0);
part_type_orientation(partTypeTree,0,270,0,1,0)
part_type_gravity(partTypeTree, 0.1, 270);
part_type_alpha3(partTypeTree,1,1,0);
part_type_life(partTypeTree,20,20);