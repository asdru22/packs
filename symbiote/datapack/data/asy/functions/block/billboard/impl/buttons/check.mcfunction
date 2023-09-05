execute as @e[type=slime,tag=asy.button] if score @s asy.id = .temp asy.data run data merge entity @s {Glowing:0b}
execute if entity @s[tag=!asy.open_display] run function asy:block/billboard/impl/buttons/move
execute if entity @s[tag=asy.open_display] run function asy:block/billboard/impl/buttons/close_display