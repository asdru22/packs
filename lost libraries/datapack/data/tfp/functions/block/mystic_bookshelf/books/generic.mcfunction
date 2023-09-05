item modify entity @a[advancements={tfp:technical/interaction_entity=true}] weapon.mainhand tfp:remove_one
execute on passengers if entity @s[type=marker] run function tfp:player/actionbar/add_book
playsound minecraft:block.enchantment_table.use player @a[distance=..50] ~ ~ ~ 1 0.66