function atr:player/death/respawn

xp set @s 1 levels
tag @s add atr.affected

scoreboard players set @s atr.stat.base_damage 1

scoreboard players set @s atr.stat.current_health 20
scoreboard players set @s atr.stat.max_health 20

scoreboard players set @s atr.stat.max_mana 100
scoreboard players set @s atr.stat.current_mana 100

scoreboard players set @s atr.xp.current 0 
scoreboard players set @s atr.xp.max 100
scoreboard players set @s atr.xp.level 1

xp set @s 0 points
xp set @s 1 levels

execute store result score @s atr.id run scoreboard players add #ids atr.int 1

function atr:player/transfer_scores/set_storage

function atr:player/transfer_scores/new_player with storage atr:storage root.temp.player