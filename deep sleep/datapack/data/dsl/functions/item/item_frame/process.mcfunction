execute store success score $valid dsl.dummy if block ~ ~ ~ #dsl:air if block ~ ~-1 ~ farmland

data modify storage dsl:storage root.temp.item_frame set from entity @s Item.tag.dsl

execute if score $valid dsl.dummy matches 1 run function dsl:item/item_frame/entries with storage dsl:storage root.temp.item_frame
execute if score $valid dsl.dummy matches 0 as @p[scores={dsl.place_item_frame=1..},gamemode=!creative] run function dsl:item/item_frame/give_back with storage dsl:storage root.temp.item_frame
kill