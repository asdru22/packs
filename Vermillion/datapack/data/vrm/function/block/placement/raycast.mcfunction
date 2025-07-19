# Scans for placed custom blocks

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function vrm:block/placement/check_blocks
scoreboard players remove @s vrm.dummy 1
execute if score @s vrm.dummy matches 1.. positioned ^ ^ ^1 run function vrm:block/placement/raycast