/// @description
if(instance_exists(obj_player)){
	with (obj_player){
		attack += other.EXP*0.1;
		HP += 10;
	}
}
create_particles(x,y,180,"obj_blad");
create_item(DropItem1,irandom_range(DropItem1_Max_num,DropItem1_minimam_num),x,y,DropItem1_Drop_Percentage);
create_item(DropItem2,irandom_range(DropItem2_Max_num,DropItem2_minimam_num),x,y,DropItem2_Drop_Percentage);
create_item(DropItem3,irandom_range(DropItem3_Max_num,DropItem3_minimam_num),x,y,DropItem3_Drop_Percentage);
with (obj_game){score += other.EXP;}