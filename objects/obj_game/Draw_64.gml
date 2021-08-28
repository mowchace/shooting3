switch (room){
	case rm_start:{
		draw_set_halign(fa_center);
		draw_text((global.cameraX+global.cameraWidth)/2,y,"TEST start");
		draw_set_halign(fa_left);
	} break;
	case rm_game:{
		var _draw = draw_set_font(-1);
		draw_text(x,y,"HP:"+string(global.playerHP));
		draw_text(x,y+20,"SCORE:"+string(score));
	} break;
}