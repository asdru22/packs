playsound minecraft:item.book.page_turn block @a[distance=..5]
tag @s add cotv.block.endric_altar.has_book
item replace entity @s weapon.mainhand with minecraft:chain_command_block{CustomModelData:6901012}
item modify entity @p[gamemode=!creative,advancements={cotv:technical/player/interact_with_villager=true}] weapon.mainhand cotv:remove_1