event_inherited();
switch(choose(1,2)){
	case 1: deth_spr(spr_enemy4_deth,1);break;
	case 2: create_attack(obj_par_bomb,DEF+attack*5,direction,spd,noone,id,1,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
	break;
}


