function addItem(_gridToAdd,_itemName,_itemAmount,_itemDiscription,_itemSprite,_itemScript){
	var _i
	//Item is alredy in the inventory
	for(_i = 0; _i < ds_grid_height(_gridToAdd);_i++){
		if(ds_grid_get(_gridToAdd,0,1) == _itemName){
			ds_grid_set(_gridToAdd,1,_i,ds_grid_get(_gridToAdd,1,_i+_itemAmount));
			return true;
		}
	};
	//It's not inventory
	if(ds_grid_get(_gridToAdd,0,0) != 0){
		ds_grid_resize(_gridToAdd,playerInventorywidth,ds_grid_height(_gridToAdd)+1);
	}
	var _newItemspot = ds_grid_height(_gridToAdd)-1;
	ds_grid_set(_gridToAdd,0,_newItemspot,_itemName);
	ds_grid_set(_gridToAdd,1,_newItemspot,_itemAmount);
	ds_grid_set(_gridToAdd,2,_newItemspot,_itemDiscription);
	ds_grid_set(_gridToAdd,3,_newItemspot,_itemSprite);
	ds_grid_set(_gridToAdd,4,_newItemspot,_itemScript);
	
	return true;
}
