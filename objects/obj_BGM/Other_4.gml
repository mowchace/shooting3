global.enemystate = enemy_state.hide;
switch(room){
	case rm_start:	break;
	case rm_game:	baseBGM  =  bgm_mm2battle break;
	case rm_river:	baseBGM  =  bgm_mm2battle break;
}
/*
if(BGM != setBGM){
	audio_stop_sound(BGM);
	BGM = setBGM;
	audio_play_sound(BGM ,1,1);
}
