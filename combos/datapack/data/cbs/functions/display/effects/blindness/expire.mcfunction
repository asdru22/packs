data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data remove storage cbs:storage root.temp.effects[{id:"blindness"}]
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init

effect clear @s blindness
scoreboard players reset @s cbs.effect.blindness