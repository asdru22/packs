execute if score @s asd.using_item = @s asd.prev_using_item run function asd:item/usable/release
scoreboard players operation @s asd.prev_using_item = @s asd.using_item
execute if predicate asd:item/drill run function asd:item/drill/tick