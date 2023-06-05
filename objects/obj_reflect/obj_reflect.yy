{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_reflect",
  "spriteId": {
    "name": "spr_snipe",
    "path": "sprites/spr_snipe/spr_snipe.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_par_attack",
    "path": "objects/obj_par_attack/obj_par_attack.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_par_enemy","path":"objects/obj_par_enemy/obj_par_enemy.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_par_nutral","path":"objects/obj_par_nutral/obj_par_nutral.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},},
  ],
  "properties": [],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"fixed_damage","path":"objects/obj_par_attack/obj_par_attack.yy",},"objectId":{"name":"obj_par_attack","path":"objects/obj_par_attack/obj_par_attack.yy",},"value":"2",},
  ],
  "parent": {
    "name": "atk",
    "path": "folders/Objects/gameobject/atk.yy",
  },
}