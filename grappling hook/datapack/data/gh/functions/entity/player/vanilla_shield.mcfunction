execute store result score @s smithed.damage run scoreboard players operation @s gh.dmg_blocked /= $10 gh.data
tellraw @s {"score":{"name": "@s","objective": "smithed.damage"}}
scoreboard players reset @s gh.dmg_blocked
function #smithed.damage:entity/apply/armor

scoreboard players set $strength delta.api.launch 10000
execute if entity @s[tag=!gh.land] anchored eyes facing ^ ^ ^-1 run function delta:api/launch_looking