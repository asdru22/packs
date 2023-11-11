data merge entity @s {teleport_duration:2,Tags:["cgn.tick","cgn.double_edged_sword"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[1.0f,0.0f,0.0f],angle:-1.57079632679f},scale:[1.0f,1.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @s item set from storage srn:storage root.temp.item
data modify entity @s item.tag.cgn.Slot set from storage srn:storage root.temp.item.Slot
execute store result entity @s item.tag.cgn.owner int 1 run scoreboard players operation @s srn.id = #temp cgn.dummy
execute if score #gamemode cgn.dummy matches 0 run function srn:item/durability/damage_generic_amount/container0_1

tp @s ~ ~ ~ ~ ~

execute if data storage srn:storage root.temp.item.tag.cgn{id:"ebonite_sword"} run function cgn:item/double_edged_sword/interaction