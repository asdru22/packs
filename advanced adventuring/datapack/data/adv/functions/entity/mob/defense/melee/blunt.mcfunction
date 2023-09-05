execute store result score $def adv.data run data get entity @s HandItems[-1].tag.advm.Armor.Melee.Blunt 100
scoreboard players operation $damage adv.data -= $def adv.data
execute if score $damage adv.data matches ..0 run scoreboard players set $damage adv.data 0
execute unless score $damage adv.data matches 0 run function adv:entity/mob/defense/melee/perc