data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data modify storage cbs:storage root.temp.effects append value {id:"blindness",display:'{"text":"Φ","color":"dark_purple"}'}
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init

#
$scoreboard players set @s cbs.effect.blindness $(duration)
effect give @s blindness infinite 0 true