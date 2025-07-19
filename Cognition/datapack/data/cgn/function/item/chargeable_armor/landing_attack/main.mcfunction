scoreboard players set #max_attacks cgn.dummy 8

$execute as @e[type=!#cgn:inanimate,predicate=cgn:entity_properties/can_be_damaged,distance=..10,nbt=!{UUID:$(UUID)},sort=nearest] at @s positioned over motion_blocking_no_leaves if entity @s[dx=0,dy=1000,dz=0] if score #max_attacks cgn.dummy matches 1.. run function cgn:item/chargeable_armor/landing_attack/damage  {UUID:$(UUID)}

$execute as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_name":'{"translate":"item.cgn.ebognite"}'}}}] at @s run function cgn:item/chargeable_armor/landing_attack/convert_ebognite {UUID:$(UUID)}