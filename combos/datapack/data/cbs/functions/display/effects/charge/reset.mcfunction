data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data remove storage cbs:storage root.temp.effects[{id:"charge"}]
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init

scoreboard players reset @s cbs.effect.charge