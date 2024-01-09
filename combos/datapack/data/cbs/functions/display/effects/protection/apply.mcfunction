data modify storage cbs:storage root.temp.effects set from entity @s EnderItems[0].tag.cbs.effects
data modify storage cbs:storage root.temp.effects append value {id:"protection",display:'{"text":"🛡","color":"yellow"}'}
item modify entity @s enderchest.0 cbs:copy_effects
function cbs:display/effects/init

#
$scoreboard players set @s cbs.effect.protection $(duration)
$attribute @s generic.armor modifier add 004c0e7c-652a-4b5e-9a1a-500b7de0d7e3 "cbs.protection" $(defense) add