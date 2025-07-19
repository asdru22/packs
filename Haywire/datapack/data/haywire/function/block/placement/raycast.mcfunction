# Scans for placed custom blocks

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function haywire:block/placement/check_blocks
scoreboard players remove @s haywire.dummy 1
execute if score @s haywire.dummy matches 1.. positioned ^ ^ ^1 run function haywire:block/placement/raycast