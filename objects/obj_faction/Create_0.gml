event_inherited();
faction =factions.nutral;
flash = 0;
attribute = AttributeType;
depth = -bbox_bottom;

spritePart = noone;
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

animelength = 0;
flamewidh = 0;
flameheight = 0;

attack_positionX = 0;
attack_positionY = 0;
attack_particlepositionX = 0;
attack_particlepositionY = 0;

health_bar_draw = false;

destroy_enemy = noone;
destroy_enemy_num = 1;
moveX = 0;
moveY = 0;

// Not enemy NPC Status
if(entityNPC){
	portrate_index = 0;
	name = "Anonymas";
	text = ["こんにちは"];
	speakers = [id];
}