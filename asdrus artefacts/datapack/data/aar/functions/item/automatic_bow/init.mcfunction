execute store result score $count aar.int run clear @s #arrows 0
execute if score $count aar.int matches 0 if entity @s[gamemode=creative] run scoreboard players set $count aar.int 1
execute if score $count aar.int matches 1.. run function aar:item/automatic_bow/has_arrow