# impl
scoreboard players reset @s cgn.using_item

# item specific
execute if items entity @s weapon.* poisonous_potato[item_name='{"translate": "item.cgn.automatic_bow"}'] run function cgn:item/automatic_bow/release

execute if entity @s[tag=cgn.item.windup_crossbow.release] if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/release