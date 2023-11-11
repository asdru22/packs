data modify entity @s Rotation set from storage cgn:storage root.temp.rotation
scoreboard players set @s cgn.dummy 0
tag @s add cgn.double_edged_sword.punched

tag @s remove cgn.double_edged_sword.fire_aspect 
tag @s remove cgn.double_edged_sword.charged 

execute if data storage cgn:storage root.temp.hit_item.tag.Enchantments[{id:"minecraft:fire_aspect"}] run tag @s add cgn.double_edged_sword.fire_aspect 

playsound cgn:item.double_edged_sword.punch master @a[distance=..16] ~ ~ ~ 0.66 1

function srn:item/durability/damage_generic_amount/container0_1

#scoreboard players set #charged cgn.dummy 1
execute if score #charged cgn.dummy matches 1 run tag @s add cgn.double_edged_sword.charged
execute if score #charged cgn.dummy matches 1 run tag @s add cgn.double_edged_sword.fast

tag @s remove cgn.double_edged_sword.return