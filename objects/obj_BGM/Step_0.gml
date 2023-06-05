//select BGM
switch(global.enemystate){
	case enemy_state.hide: 
		setBGM = baseBGM;
	break;
	case enemy_state.detect:
		setBGM = bgm_mgs2caution;
	break;
	case enemy_state.Alert:
		setBGM = bgm_mgs2alert2;
	break;
}
//if BGM change.stop playing BGM
if(setBGM != playingBGM){
	audio_stop_sound(playingBGM);
	playingBGM = setBGM;
	var _snd = audio_play_sound(playingBGM,1,1);
	audio_sound_gain(_snd,0,0);
	audio_sound_gain(_snd,1,500);
	}