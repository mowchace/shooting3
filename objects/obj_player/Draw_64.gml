/// @description
/*
draw_text(draw_base_x,1,"Level:"+string(Level))
draw_text(draw_base_x,draw_base_y,"EXP:"+string(EXP))
draw_text(draw_base_x,draw_base_y*2,"NextLevelEXP:"+string(NextLevelEXP))
//Health bar
draw_sprite(spr_healthbar_back,0,healthbar_x,healthbar_y*3);
draw_sprite_stretched(spr_playerhealthbar,0,healthbar_x,healthbar_y*3,(HP/MaxHP)*healthbar_width,healthbar_height);
draw_sprite(spr_healthbar_border,0,healthbar_x,healthbar_y*3);