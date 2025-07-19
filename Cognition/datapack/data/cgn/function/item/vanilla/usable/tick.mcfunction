# impl
execute if score @s cgn.using_item = @s cgn.using_item_new run function cgn:item/vanilla/usable/release
scoreboard players operation @s cgn.using_item_new = @s cgn.using_item

# item specific
execute if items entity @s weapon.* diamond_sword[custom_data~{cgn:{no_blades:true}}] run function cgn:item/double_edged_sword/malachite/recall

execute if items entity @s weapon.* poisonous_potato[item_name='{"translate": "item.cgn.automatic_bow"}'] run function cgn:item/automatic_bow/charging/tick

execute if items entity @s weapon.* crossbow[item_name='{"translate": "item.cgn.windup_crossbow"}'] run function cgn:item/windup_crossbow/charging/tick

execute if items entity @s[scores={cgn.using_item=60..}] weapon.* poisonous_potato[item_name='{"translate": "item.cgn.storm_capacitor"}'] run function cgn:item/storm_capacitor/advancement