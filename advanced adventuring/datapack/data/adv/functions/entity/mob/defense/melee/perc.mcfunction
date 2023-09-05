execute store result score $perc adv.data run data get entity @s HandItems[-1].tag.advm.Armor.Melee.Perc 100
scoreboard players set $tot adv.data 100
scoreboard players operation $tot adv.data -= $perc adv.data
scoreboard players operation $damage adv.data *= $tot adv.data
scoreboard players operation $damage adv.data /= 100 adv.data