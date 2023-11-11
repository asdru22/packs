execute store result score $count cgn.dummy run clear @s #arrows 0
execute if score $count cgn.dummy matches 0 if entity @s[gamemode=creative] run scoreboard players set $count cgn.dummy 1
execute if score $count cgn.dummy matches 1.. run function cgn:item/automatic_bow/has_arrow