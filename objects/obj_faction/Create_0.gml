collisionmap = layer_tilemap_get_id(layer_get_id("Tcol"));
faction =factions.nutral;
flash = 0;
attribute = AttributeType;
depth = -bbox_bottom;

spritePart = noone;
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

shadow_instance = instance_create_layer(x+Shadow_positionX_plus,y+Shadow_positionY_plus,"Instances",obj_shadow);
shadow_instance_id = shadow_instance.id;
with(shadow_instance_id){
	Xscal = other.Shadow_Xscal;	
	Yscal = other.Shadow_Yscal;
}

attack_positionX = 0;
attack_positionY = 0;
attack_particlepositionX = 0;
attack_particlepositionY = 0;

health_bar_draw = false;

destroy_enemy = noone;
destroy_enemy_num = 1;
moveX = 0;
moveY = 0;