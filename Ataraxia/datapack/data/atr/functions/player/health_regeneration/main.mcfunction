scoreboard players set @s atr.regeneration_cooldown 1
scoreboard players operation #temp atr.int = @s atr.stat.max_health
scoreboard players operation #temp atr.int *= @s atr.stat.health_regeneration
scoreboard players operation #temp atr.int /= #100 atr.int
scoreboard players operation @s atr.stat.current_health += #temp atr.int

scoreboard players operation @s atr.stat.current_health < @s atr.stat.max_health

execute if score @s atr.stat.health_regeneration matches ..0 run function atr:player/health_regeneration/negative