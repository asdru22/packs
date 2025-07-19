# Scans for placed custom blocks
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function cgn:block/vanilla/placement/check_blocks
scoreboard players remove @s cgn.dummy 1
execute if score @s cgn.dummy matches 1.. positioned ^ ^ ^1 run function cgn:block/vanilla/placement/raycast