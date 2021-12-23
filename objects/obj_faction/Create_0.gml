collisionmap = layer_tilemap_get_id(layer_get_id("Tcol"));
faction =factions.nutral;
flash = 0;
attribute = AttributeType;
depth = -bbox_bottom;

shadow_instance = instance_create_layer(x+Shadow_positionX_plus,y+Shadow_positionY_plus,"Instances",obj_shadow);
shadow_instance_id = shadow_instance.id;
with(shadow_instance_id){
	Xscal = other.Shadow_Xscal;	
	Yscal = other.Shadow_Yscal;
}

health_bar_draw = false;