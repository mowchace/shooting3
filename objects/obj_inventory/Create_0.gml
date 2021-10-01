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

ds_inventory = ds_grid_create(2,inv_slots);

// Items
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
	PowerUpItem = 2,
	EquipmentItem = 3,
	Misc = 4,
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

#region create item info grid
ds_items_info = load_csv("ItemData.csv");

//ds_items_info = ds_grid_create(itemStatus.Height,2);
//Items Status
// 0 = Items Name
// 1 = Items Type
// 2 = Items effect HP
// 3 = Items effect MP
// 4 = Items effect Strength
// 5 = Items effect Endurance
// 6 = Items effect Dexterity
// 7 = Items effect Perception
// 8 = Items effect Master
// 9 = Items effect Will
// 10 = Items effect Magical_power
// 11 = Items effect Charisma
// 12 = Items effect Agility
// 13 = Items effect Luck
// 14 = Items effect Stamina
// 15 = Items effect Satiety
// 16 = Items Description
/*
var _i = 0;
#region Nothing
ds_items_info[# itemStatus.Name,_i] = "Nothing"
ds_items_info[# itemStatus.Type,_i] = itemType.None
ds_items_info[# itemStatus.HP,_i] = 0
ds_items_info[# itemStatus.MP,_i] = 0
ds_items_info[# itemStatus.Strength,_i] = 0
ds_items_info[# itemStatus.Endurance,_i] = 0
ds_items_info[# itemStatus.Dexterity,_i] = 0
ds_items_info[# itemStatus.Perception,_i] = 0
ds_items_info[# itemStatus.Master,_i] = 0
ds_items_info[# itemStatus.Will,_i] = 0
ds_items_info[# itemStatus.Magical_power,_i] = 0
ds_items_info[# itemStatus.Charisma,_i] = 0
ds_items_info[# itemStatus.Agility,_i] = 0
ds_items_info[# itemStatus.Luck,_i] = 0
ds_items_info[# itemStatus.Stamina,_i] = 0
ds_items_info[# itemStatus.Satiety,_i] = 0
ds_items_info[# itemStatus.Description,_i] = "Nothing"

#endregion
#region Tomato
_z = 0;
_i = 1;
// Name
ds_items_info[# _z++,_i] = "Tomato"
// Type
ds_items_info[# _z++,_i] = itemType.UseItem
// HP
ds_items_info[# _z++,_i] = 10
// MP
ds_items_info[# _z++,_i] = 5
// Strength
ds_items_info[# _z++,_i] = 3
// Endurance
ds_items_info[# _z++,_i] = 3
// Dexterity
ds_items_info[# _z++,_i] = 3
// Perception
ds_items_info[# _z++,_i] = 3
// Master
ds_items_info[# _z++,_i] = 0
// Will
ds_items_info[# _z++,_i] = 0
// Magical power
ds_items_info[# _z++,_i] = 0
// Charisma
ds_items_info[# _z++,_i] = 0
// Agility
ds_items_info[# _z++,_i] = 0
// Luck
ds_items_info[# _z++,_i] = 0
// Stamina
ds_items_info[# _z++,_i] = 0
// Satiety
ds_items_info[# _z++,_i] = 0
// Description
ds_items_info[# _z++,_i] = "It's red vegitable."
#endregion
#endregion
#region old Item status
//Items Name
var _z = 0,_i = 0;
ds_items_info[# _z,_i++] = "Nothing"
ds_items_info[# _z,_i++] = "Tomato"
ds_items_info[# _z,_i++] = "Potato"
ds_items_info[# _z,_i++] = "Carrot"
ds_items_info[# _z,_i++] = "Artichoke"
ds_items_info[# _z,_i++] = "Chilli"
ds_items_info[# _z,_i++] = "Gourd"
ds_items_info[# _z,_i++] = "Corn"
ds_items_info[# _z,_i++] = "Wood"
ds_items_info[# _z,_i++] = "Stone"
ds_items_info[# _z,_i++] = "Bucket"
ds_items_info[# _z,_i++] = "Chair"
ds_items_info[# _z,_i++] = "Picture"
ds_items_info[# _z,_i++] = "Axe"
ds_items_info[# _z,_i++] = "Potion"
ds_items_info[# _z,_i++] = "Starfish"
ds_items_info[# _z,_i++] = "Mushroom"

//Items Type
var _z = 1,_i = 0;
ds_items_info[# _z,_i++] = itemType.None
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.Misc
ds_items_info[# _z,_i++] = itemType.Misc
ds_items_info[# _z,_i++] = itemType.Misc
ds_items_info[# _z,_i++] = itemType.Misc
ds_items_info[# _z,_i++] = itemType.Misc
ds_items_info[# _z,_i++] = itemType.EquipmentItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem
ds_items_info[# _z,_i++] = itemType.UseItem

//Items script
var _z = 2,_i = 0;
var _obj = obj_player;
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = 
ds_items_info[# _z,_i++] = use_Item(irandom_range(-5,5),0,0,0,_obj)
ds_items_info[# _z,_i++] = use_Item(10,0,0,0,_obj)
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1
ds_items_info[# _z,_i++] = -1


//Items Description
var _z = 3,_i = 0;
ds_items_info[# _z,_i++] = "Nothing"
ds_items_info[# _z,_i++] = "Tomato Description traditional center said.the tomato is very helhy Vesitable"
ds_items_info[# _z,_i++] = "Potato Description"
ds_items_info[# _z,_i++] = "Carrot Description"
ds_items_info[# _z,_i++] = "Artichoke Description"
ds_items_info[# _z,_i++] = "Chilli"
ds_items_info[# _z,_i++] = "Gourd"
ds_items_info[# _z,_i++] = "Corn"
ds_items_info[# _z,_i++] = "Wood"
ds_items_info[# _z,_i++] = "Stone"
ds_items_info[# _z,_i++] = "Bucket"
ds_items_info[# _z,_i++] = "Chair"
ds_items_info[# _z,_i++] = "Picture"
ds_items_info[# _z,_i++] = "Axe"
ds_items_info[# _z,_i++] = "Potion"
ds_items_info[# _z,_i++] = "Starfish"
ds_items_info[# _z,_i++] = "Mushroom"
*/
#endregion
var _YY	= 0;repeat(inv_slots){
	ds_inventory[# 0,_YY] = irandom_range(1,item.Height-1);
	ds_inventory[# 1,_YY] = irandom_range(1,10);
	_YY += 1;
}