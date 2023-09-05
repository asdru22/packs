## get real damage

execute if score magic.triggered asd.d matches 1 run scoreboard players set real.damage_recived asd.d 100
execute if entity @s[advancements={asd:technical/player/on_hit=true}] run function asd:player/stats/get/active
execute if entity @s[scores={asd.use_coas=1..}] run function asd:player/stats/get/active
tellraw @s[tag=asd.dmg_out] ["| Recived Damage: ",{"score":{"name": "s.damage","objective": "asd.d"}}]