loot give @a[advancements={nihility:technical/block/interact/oblivion_well=true}] loot nihility:item/lapis_lightzuli
scoreboard players remove lapis nihility.data 1
execute if score lapis nihility.data matches 1.. run function nihility:block/oblivion_well/interaction/no_item/lapis_loop