data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data remove storage cbs:storage root.temp.effects[{id:"protection"}]
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init

attribute @s generic.armor modifier remove 004c0e7c-652a-4b5e-9a1a-500b7de0d7e3
scoreboard players reset @s cbs.effect.protection