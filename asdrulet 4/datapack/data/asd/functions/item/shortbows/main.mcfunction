execute if data storage asd:data root.temp.equipment.mainhand.tag.base.Durability run function asd:item/custom/durability/slots/mainhand
clear @s[gamemode=!creative] #arrows 1
function asd:player/stats/get/get_items
function asd:player/stats/arrow_speed/get
playsound minecraft:entity.arrow.shoot player @a[distance=..10]
execute store result score player.uuid asd.d run data get entity @s UUID[0]
execute store result score @s asd.ability_cooldown run data get entity @s SelectedItem.tag.base.AbilityCooldown
execute anchored eyes run summon arrow ^ ^ ^.24 {pickup:0b,damage:5d,Tags:["asd.temp_arrow","asd.entity","asd.1second"]}
data modify storage asd:data root.temp.UUID set from entity @s UUID
tag @s add asd.entity.temp.me
execute as @e[type=marker,tag=asd.trig,limit=1] at @s rotated as @a[tag=asd.entity.temp.me] positioned ^ ^ ^1 run function asd:technical/trig
execute as @e[type=#arrows,tag=!asd.arrow.has_owner,tag=asd.temp_arrow,limit=1,sort=nearest] run function asd:item/shortbows/arrow_motion
tag @s remove asd.entity.temp.me