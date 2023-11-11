tp @s ^ ^ ^1 facing ^ ^ ^-1
execute rotated as @s run tp @s ^ ^ ^0.5
tag @s add cgn.double_edged_sword.return
tag @s remove cgn.double_edged_sword.punched

execute if entity @s[tag=cgn.double_edged_sword.charged] run function cgn:item/double_edged_sword/effects/charge_init