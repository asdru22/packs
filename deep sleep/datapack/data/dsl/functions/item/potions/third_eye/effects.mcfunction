scoreboard players remove @s dsl.third_eye_duration 1
particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.01 4 
execute if score @s dsl.third_eye_duration matches ..0 run function dsl:item/potions/third_eye/run_out