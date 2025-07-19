data merge entity @s {Fire:40s}
execute if entity @s[type=!#cgn:inanimate,nbt={HurtTime:0s}] run damage @s 2 in_fire
execute if entity @s[type=#cgn:inanimate] run damage @s 2 in_fire
execute if entity @s[type=player] at @s run summon small_fireball ~ ~2.1 ~ {Motion:[0.0001d,-0.5d,0.001d],Tags:["smithed.entity","smithed.strict"]} 