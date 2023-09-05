scoreboard players reset @s adv.item.katana
execute store result score $damage adv.data run attribute @s generic.attack_damage get 10
execute summon item_display run function adv:gameplay/item/melee/katana/init