function atr:events/player/is_hurt/by_player
scoreboard players operation #temp atr.int = @s atr.id
scoreboard players set #temp2 atr.int 0 
scoreboard players set $damage atr.int 0
execute as @e[type=#atr:affected,type=!player,tag=atr.affected] if score #temp2 atr.int matches 0 run function atr:events/player/is_hurt/find_mob

execute if score $damage atr.int matches 1.. run function atr:events/player/is_hurt/apply_damage

advancement revoke @s only atr:entity_hurt_player