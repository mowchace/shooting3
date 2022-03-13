// Draw Box
draw_sprite_ext(box,0,box_x,box_y,size,size,0,-1,1);
// Draw Portrait Back
draw_sprite_ext(frame,0,port_x,port_y,size,size,0,-1,1);
// Draw Portrait
draw_sprite_ext(portraite,portrate_index,port_x,port_y,size,size,0,-1,1);
// Draw Portrait Frame
draw_sprite_ext(frame,1,port_x,port_y,size,size,0,-1,1);
// Draw Namebox
draw_sprite_ext(namebox,0,namebox_x,namebox_y,size,size,0,-1,1);
//----TEXT
draw_set_font(font);

// Draw Name
var _c = name_text_col;
draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text_color(name_tex_x,name_tex_y,name,_c,_c,_c,_c,1);
draw_set_halign(fa_left);draw_set_valign(fa_top);
// Draw Text
_c = text_col;
draw_text_ext_color(text_x,text_y,text[page],text_height,text_max_width,_c,_c,_c,_c,1);