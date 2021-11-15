switch (room){
	case rm_start:{
		draw_set_halign(fa_center);
		draw_text((global.cameraX+global.cameraWidth)/2,y,"TEST start");
		draw_set_halign(fa_left);
	} break;
	case rm_game:{
		draw_set_font(-1);
		if(global.pickupmode){
			draw_text(x,y+20,"PickUpMode");
		}
	} break;
}