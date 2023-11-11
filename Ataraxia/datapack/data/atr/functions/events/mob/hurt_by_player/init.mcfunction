#> Incoming Damage: $damage atr.int
execute store result score $charge atr.int run data get entity @s Health -10
scoreboard players add $charge atr.int 10002

execute if entity @s[type=player] run function atr:events/player/is_hurt/by_player
execute if entity @s[type=!player] run data modify entity @s Health set value 1000f

execute if data storage atr:storage root.temp.attack{type:"ranged"} run scoreboard players add $charge atr.int 15

execute if data storage atr:storage root.temp.attack{type:"magic"} run scoreboard players set $charge atr.int 100

execute store result storage atr:storage root.temp.attack.charge double 0.01 run scoreboard players get $charge atr.int

tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Weapon charge: ","color":"white"},{"score":{"name":"$charge","objective":"atr.int"},"color":"red"}]

scoreboard players operation $damage atr.int *= $charge atr.int 

function atr:events/player/is_hurt/apply_damage

execute store result storage atr:storage root.temp.attack.damage int 1 run scoreboard players get $damage atr.int
function atr:display/pop_up/default with storage atr:storage root.temp.attack

execute if entity @s[scores={atr.stat.current_health=1..},type=!player] run function atr:events/mob/hurt_by_player/mob_displays