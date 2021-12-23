function create_particles(_XX,_YY,_dir,_objTypeName){
	with(obj_particles){
				if(_dir > 135 && _dir < 225){
					part_system_depth(partSys,10)
				}else{part_system_depth(partSys,-10)}
				switch(_objTypeName){
					case "obj_bullet":
					case "obj_snipe":	part_particles_create(partSys,_XX,_YY,partTypeArmmo,1);break;
					case "obj_bomb":	part_particles_create(partSys,_XX,_YY,partTypeExplode,1);break;
					case "obj_player":
					case "obj_par_enemy": part_particles_create(partSys,_XX,_YY,partTypeExhaust,1);break;
					case "obj_blad":	part_particles_create(partSys,_XX,_YY,partTypeBlad,1);break;
					case "obj_rock":	part_particles_create(partSys,_XX,_YY,partTypeRock,10);break;
					case "obj_tree":	part_particles_create(partSys,_XX,_YY,partTypeTree,10);break;
					case "obj_stump":	part_particles_create(partSys,_XX,_YY,partTypeTree,10);break;
					case "obj_par_bullet":	part_particles_create(partSys,_XX,_YY,partTypegunflash,1);
											part_type_orientation(partTypegunflash, _dir, _dir, 5, 5, true);break
					case "obj_gunhit":	part_particles_create(partSys,_XX,_YY,partTypegunhit,1);
										part_system_depth(partSys,-10);break
					case "obj_punch": part_particles_create(partSys,_XX,_YY,partTypepunch,1);break;
				}
	}
}