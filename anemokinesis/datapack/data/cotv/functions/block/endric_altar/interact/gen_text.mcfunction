item modify entity @s armor.head cotv:endric_altar_display
data modify storage cotv:storage root.temp.display set from entity @s ArmorItems[3].tag.display.Name
execute store result score cost cotv.dummy run data get entity @s ArmorItems[3].tag.cotv.cost
execute unless data storage cotv:storage root.temp.item if score @p[predicate=!cotv:player/sneaking,advancements={cotv:technical/player/interact_with_villager=true}] cotv.void_tolerance >= cost cotv.dummy run function cotv:block/endric_altar/interact/generate/init