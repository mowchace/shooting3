//Change BGM
audio_stop_sound(BGM);
press_count += 1;

if(press_count >= 9){press_count = 0};
switch(press_count){
	case 0: BGM = bgm_mm2battle;break;
	case 1: BGM = bgm_parodius_start;break;
	case 2: BGM = bgm_parodius_maimmaim;break;
	case 3: BGM = bgm_parodius_2;break;
	case 4: BGM = bgm_parodius_4;break;
	case 5: BGM = bgm_parodius_5;break;
	case 6: BGM = bgm_parodius_6;break;
	case 7: BGM = bgm_parodius_8;break;
	case 8: BGM = bgm_River_City_Girls_OST___Smack_Down;break;
	case 9: BGM = bgm_River_City_Girls_OST___The_Hunt;break;
}
audio_play_sound(BGM,1,1);
show_debug_message("press_count:"+string(press_count));
show_debug_message("BGM:"+string(BGM));