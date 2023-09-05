scoreboard players reset key nihility.data
execute positioned ^ ^ ^-1 if entity @s[distance=..0.945] run function nihility:entity/player/keystrokes/key/w
execute positioned ^-1 ^ ^ if entity @s[distance=..0.945] run function nihility:entity/player/keystrokes/key/a
execute positioned ^ ^ ^1 if entity @s[distance=..0.945] run function nihility:entity/player/keystrokes/key/s
execute positioned ^1 ^ ^ if entity @s[distance=..0.945] run function nihility:entity/player/keystrokes/key/d