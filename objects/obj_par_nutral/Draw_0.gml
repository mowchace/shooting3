event_inherited();

// HPバー表示
healthbar_x = x;
healthbar_y = y-sprite_height*3/4;
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(HP/MaxHP)*healthbar_width,healthbar_height);