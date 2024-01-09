scoreboard players set $strength delta.api.launch 2000
execute rotated 0 -90 run function delta:api/launch_looking
scoreboard players set $strength delta.api.launch 26000
execute anchored eyes rotated ~ 0 positioned ^ ^ ^ run function delta:api/launch_looking
particle minecraft:white_smoke ~ ~1 ~ 0.25 0.5 0.25 0.01 10