/// @description
depth = -1;
scale = 1;
show_inventory =  true;

inv_slots = 54;
inv_slots_width = 9;
inv_slots_height = 3;

x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;
inv_UI_width = 320;
inv_UI_height = 320;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_item;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_width(spr_inv_items)/cell_size;

//inv_UI_x = (gui_width*0.5) - (inv_UI_width*0.5*scale);
//inv_UI_y = (gui_height*0.5) - (inv_UI_height*0.5*scale);
inv_UI_x = gui_width*-0.1*scale;
inv_UI_y = gui_height*0.05*scale;

slots_x = inv_UI_x + (9 * scale);
slots_y = inv_UI_y + (40 * scale);

// Inventory
// 0 = ITEMS
// 1 = NUMBER

ds_inventory = ds_grid_create(2,inv_slots);

// Items
enum item {
	none		= 0,
	tomato		= 1,
	potato		= 2,
	carroto		= 3,
	artichoke	= 4,
	chilli		= 5,
	gourd		= 6,
	corn		= 7,
	wood		= 8,
	stone		= 9,
	bucket		= 10,
	chair		= 11,
	picture		= 12,
	axe			= 13,
	potion		= 14,
	starfish	= 15,
	mushroom	= 16,
	height		= 17,
}

var _YY	= 0;repeat(inv_slots){
	ds_inventory[# 0,_YY] = irandom_range(1,item.height-1);
	ds_inventory[# 1,_YY] = irandom_range(1,10);
	_YY += 1;
}