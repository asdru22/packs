scoreboard players set $hit dsl.dummy 1
execute store success score $custom dsl.dummy positioned ~ ~0.5 ~ if entity @e[type=item_display,tag=dsl.suspicious_snow,distance=..0.5]

execute if score $custom dsl.dummy matches 1 facing entity @s eyes positioned ^ ^ ^0.5 run particle block snow ~ ~ ~ 0.3 0.3 0.3 0.01 1
execute if score $custom dsl.dummy matches 0 facing entity @s eyes positioned ^ ^ ^0.5 run particle block gravel ~ ~ ~ 0.3 0.3 0.3 0.01 1