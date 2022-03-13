gui_height = display_get_gui_height();

box = spr_textbox;
frame = spr_portrait_frame_strip2;
portraite = spr_portraits_strip8;
namebox = spr_namebox;

size = 0.5;
box_width = sprite_get_width(box)*size;
box_height = sprite_get_height(box)*size;
port_width = sprite_get_width(portraite)*size;
port_height = sprite_get_height(portraite)*size;
namebox_width = sprite_get_width(namebox)*size;
namebox_height = sprite_get_height(namebox)*size;

port_x = (global.cameraWidth - box_width - port_width)*0.5;
//port_y = (gui_height*0.98) - port_height;
port_y = gui_height - port_height*1.5;
box_x = port_x + port_width;
box_y = port_y;
namebox_x = port_x;
namebox_y = port_y -namebox_height;

x_buffer = 12;
y_buffer = 8;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_tex_x = namebox_x + (namebox_width/2);
name_tex_y = namebox_y + (namebox_height/2);
text_max_width = box_width - (2*x_buffer);

portrate_index = 0;

text[0] = "this is test string this is test stringthis is test stringthis is test stringthis is test stringthis is test stringthis is test stringthis is test stringthis is test stringthis is test string";
text[1] = "this is the second page";
page = 0;
name = "name";
text_col = c_black;
name_text_col = c_black;
font = fnt_text;

interact_key = ord("E");

draw_set_font(font);
text_height = string_height("M");