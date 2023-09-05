scoreboard players operation l_dmg nihility.data *= 2 nihility.data
tag @s add nihility.bounce
scoreboard players add bounces nihility.data 1
scoreboard players set found_slime nihility.data 0
#tellraw @p ["Bounces: ",{"score":{"name": "bounces","objective":"nihility.data"}}]

execute if score bounces nihility.data matches 1 run playsound minecraft:entity.arrow.hit_player player @a[distance=..16] ~ ~ ~ 2 1
execute if score bounces nihility.data matches 2 run playsound minecraft:entity.arrow.hit_player player @a[distance=..16] ~ ~ ~ 2 1.3
execute if score bounces nihility.data matches 3 run playsound minecraft:entity.arrow.hit_player player @a[distance=..16] ~ ~ ~ 2 1.6


##If bounces are less then 3 and found slime then bounce
execute if score bounces nihility.data matches ..2 if entity @e[type=slime,tag=nihility.slime,distance=..6,tag=!nihility.bounce] run function nihility:item/slime_slinger_staff/bounce_off_slime
##If bounces are less then 3 but didnt find slime then target mob
execute if score bounces nihility.data matches ..3 if score mob_cast nihility.data matches 0 unless entity @e[type=slime,tag=nihility.slime,distance=..6,tag=!nihility.bounce] run function nihility:item/slime_slinger_staff/target_mob
##If bounces are more then 3 and there is slime then target mob