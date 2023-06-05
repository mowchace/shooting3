//Change playingBGM
audio_stop_sound(playingBGM);
press_count += 1;

if(press_count >= 9){press_count = 0};
switch(press_count){
	case 0: playingBGM = bgm_mm2battle;break;
	case 1: playingBGM = bgm_parodius_start;break;
	case 2: playingBGM = bgm_parodius_maimmaim;break;
	case 3: playingBGM = bgm_parodius_2;break;
	case 4: playingBGM = bgm_parodius_4;break;
	case 5: playingBGM = bgm_parodius_5;break;
	case 6: playingBGM = bgm_parodius_6;break;
	case 7: playingBGM = bgm_parodius_8;break;
	case 8: playingBGM = bgm_River_City_Girls_OST___Smack_Down;break;
	case 9: playingBGM = bgm_River_City_Girls_OST___The_Hunt;break;
}
audio_play_sound(playingBGM,1,1);
show_debug_message("press_count:"+string(press_count));
show_debug_message("playingBGM:"+string(playingBGM));