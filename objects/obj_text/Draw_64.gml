/// @desc Draw Textbox
NineSliceBoxStreched(spr_textbox_bg1,x1,y1,x2,y2,background);
draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(textmessage,1,textProgress);
draw_text((x1+x2)/2,y1+8,_print);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+7,_print);