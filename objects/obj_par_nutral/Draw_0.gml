if(see_through){
	if(collision_rectangle(x-sprite_width/2,y,x+sprite_width/2,y-sprite_height,obj_player,false,false)){
		image_alpha = 0.3;
	} else {
		image_alpha = 1;
	}
}
// helth_bar draw
if(health_bar_draw){
	healthbar_x = x;
	healthbar_y = y-sprite_height*3/4;
	draw_sprite_stretched_ext(spr_healthbar,0,healthbar_x,healthbar_y,healthbar_width,healthbar_height,c_black,1);
	draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(HP/MaxHP)*healthbar_width,healthbar_height);
}