/// @description
depth = -1;
scale = 1;
global.show_inventory =  true;

inv_slots = 54;
inv_slots_width = 9;
inv_slots_height = 6;

selected_slot = 0;
pickup_slot = -1;
mouse_slotx = 0;
mouse_sloty = 0;

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
inv_UI_x = gui_width*0.1*scale;
inv_UI_y = gui_height*0.05*scale;

slots_x = inv_UI_x + (9 * scale);
slots_y = inv_UI_y + (40 * scale);

description_x = slots_x;
description_y = inv_UI_y + (265 *scale);

// Inventory
// 0 = ITEMS
// 1 = NUMBER
// 2 = ItemType
// 3 = weight

//ds_inventory = ds_grid_create(2,inv_slots);
ds_inventory = ds_grid_create(3,inv_slots);

#region Items
enum item {
	None		= 0,
	Tomato		= 1,
	Potato		= 2,
	Carrot		= 3,
	Artichoke	= 4,
	Chilli		= 5,
	Gourd		= 6,
	Corn		= 7,
	Wood		= 8,
	Stone		= 9,
	Bucket		= 10,
	Chair		= 11,
	Picture		= 12,
	Axe			= 13,
	Potion		= 14,
	Starfish	= 15,
	Mushroom	= 16,
	Height		= 17,
}

enum itemType {
	None = 0,
	UseItem = 1,
	EquipmentItem = 2,
	Misc = 3,
}

#region EquipmentFlag
EquipmentFlag = false;
#endregion

#region Not Use
/*
enum itemMaxID {
	UseItem = 10,
	EquipmentItem = 4,
	Misc = 2,
}
enum itemStatus {
	Name = 0,
	Type = 1,
	HP = 2,
	MP = 3,
	Strength = 4,
	Endurance = 5,
	Dexterity = 6,
	Perception = 7,
	Master = 8,
	Will = 9,
	Magical_power = 10,
	Charisma = 11,
	Agility = 12,
	Luck = 13,
	Stamina = 14,
	Satiety = 15,
	Description = 16,
	Height = 17,
}
*/
#endregion
#endregion
#region create item info grid
ds_items_info = load_csv("ItemData.csv");

#endregion
var _YY	= 0;repeat(inv_slots){
	ds_inventory[# 0,_YY] = irandom_range(1,item.Height-1);
	ds_inventory[# 1,_YY] = irandom_range(1,10);
	ds_inventory[# 2,_YY] = ds_items_info[# 2,_YY+1];
	/*
	var _Num,_Weight;
	_Num = ds_inventory[# 1,_YY];
	// Float Type
	_Weight = ds_items_info[# 3,_YY+1];
	*/
	//ds_inventory[# 3,_YY] = ds_items_info[# 3,_YY+1];
	_YY += 1;
}