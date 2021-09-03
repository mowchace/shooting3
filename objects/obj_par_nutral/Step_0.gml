if(HP <= 0){
	audio_play_sound(SE,1,0);
	instance_destroy();
	obj_player.attack += other.EXP*0.1;
	var _instdebli = instance_create_depth(x,y,1,obj_blad);
	with (obj_game){score += other.EXP;}
}