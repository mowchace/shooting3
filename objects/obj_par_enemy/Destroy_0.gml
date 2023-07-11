/// @description
event_inherited();
audio_play_sound(deth_SE,1,0);
switch(attribute){
	case "Iron": create_particles(x,y,180,"obj_rock");break;
	default: create_particles(x,y,180,"obj_blad");break;
}
create_item(DropItem1,irandom_range(DropItem1_Max_num,DropItem1_minimam_num),x,y,DropItem1_Drop_Percentage);
create_item(DropItem2,irandom_range(DropItem2_Max_num,DropItem2_minimam_num),x,y,DropItem2_Drop_Percentage);
create_item(DropItem3,irandom_range(DropItem3_Max_num,DropItem3_minimam_num),x,y,DropItem3_Drop_Percentage);
if(instance_exists(obj_player)){
	with (obj_players_status){
		EXP += other.EXP;
		if(EXP >= NextLevelEXP){
			Levelup(obj_players_status);
		}
		HP += 10;
		if(HP >= MaxHP){
			HP = MaxHP;
		}
	}
}

//instance_destroy(shadow_instance_id);
if(create_object != noone && instance_count <= 100){
	var _flamewidth = sprite_get_width(spr_base)/4;
	var _flameheight = sprite_get_height(spr_base)/8;
	if(!sprite_8direction_switch){
		_flamewidth = sprite_width;
		_flameheight = sprite_height;
	}
	deth_and_create_object(x,y,_flamewidth,_flameheight,create_object,create_object_num);
}
