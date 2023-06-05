//if show obj_inventry or room = rm_start.don't draw sprite.
if(global.show_inventory == true || room = rm_start){ image_alpha = 0}
else{
image_alpha = 0.5
// get mouse position for GUI_layer(pointa)
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);
//chaice mouse position
x = mousex;
y = mousey;
}