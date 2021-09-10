/// @description
depth = -1;
scale = 1;
show_inventory =  true;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;
inv_UI_width = 320;
inv_UI_height = 320;

spr_inv_UI = spr_inventory_UI;

//inv_UI_x = (gui_width*0.5) - (inv_UI_width*0.5*scale);
//inv_UI_y = (gui_height*0.5) - (inv_UI_height*0.5*scale);
inv_UI_x = gui_width*0.1*scale;
inv_UI_y = gui_height*0.05*scale;