scoreboard players set @s adv.s.current_mana 100
scoreboard players set @s adv.s.max_mana 100

scoreboard players set @s adv.reload.magic 0
scoreboard players set @s adv.reload.melee 0
scoreboard players set @s adv.reload.ranged 0

execute store result score @s adv.id run scoreboard players add #IDS adv.data 1