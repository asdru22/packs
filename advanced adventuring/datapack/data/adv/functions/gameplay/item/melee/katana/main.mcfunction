scoreboard players add @s adv.item.katana 1
execute if entity @s[scores={adv.item.katana=4..}] anchored eyes positioned ^ ^ ^ run function adv:gameplay/item/melee/katana/shoot