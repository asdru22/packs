execute store success score $valid srn.dummy if block ~ ~ ~ #srn:air if block ~ ~-1 ~ farmland

data modify storage srn:storage root.temp.item_frame set from entity @s Item.components."minecraft:custom_data".srn

execute if score $valid srn.dummy matches 1 run function #srn:entity/item_frame/place_crop
execute if score $valid srn.dummy matches 0 as @p[scores={srn.used_item_frame=1..},gamemode=!creative] run function srn:entity/item_frame/give_back with storage srn:storage root.temp.item_frame
kill