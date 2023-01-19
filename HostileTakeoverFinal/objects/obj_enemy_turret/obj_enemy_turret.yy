{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_turret",
  "spriteId": {
    "name": "spr_turret",
    "path": "sprites/spr_turret/spr_turret.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_enemy",
    "path": "objects/obj_enemy/obj_enemy.yy",
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shot_interval","varType":0,"value":"120","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"aggro_range","path":"objects/obj_enemy/obj_enemy.yy",},"objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"value":"2048",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"score_given","path":"objects/obj_enemy/obj_enemy.yy",},"objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"value":"10",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
}