cell_size = 32;
item_spr = spr_inventory_item;
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

item_spr_num = -1
x_frame = 0;
y_frame = 0;

//drop point move
x_offset = cell_size/5;
y_offset = cell_size*(1/2);

drop_move = true;
DropAndPickuplength = 16;
var _itemdir = irandom_range(0,360);
var _len = DropAndPickuplength;
goal_x = x + lengthdir_x(_len,_itemdir);
goal_y = y + lengthdir_y(_len,_itemdir);