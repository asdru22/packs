scoreboard players remove my_lapis nihility.data 1
scoreboard players add lapis nihilty.data 1
item modify entity @a[advancements={nihility:technical/block/interact/oblivion_well=true}] weapon.mainhand nihility:remove_one
execute if score my_lapis nihility.data matches 1.. if score lapis nihility.data matches ..19 run function nihility:block/oblivion_well/interaction/lapis/add_loop