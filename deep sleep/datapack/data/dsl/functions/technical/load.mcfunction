# add objs
scoreboard objectives add dsl.dummy dummy
scoreboard objectives add dsl.dummy2 dummy

scoreboard objectives add dsl.third_eye_duration dummy

scoreboard objectives add dsl.using_item dummy
scoreboard objectives add dsl.prev_using_item dummy

scoreboard objectives add dsl.break_suspicious_gravel mined:suspicious_gravel
scoreboard objectives add dsl.use_warped_fungus_on_a_stick used:warped_fungus_on_a_stick
scoreboard objectives add dsl.place_item_frame used:item_frame
scoreboard objectives add dsl.use_crossbow used:crossbow
# set vars
scoreboard players set 10 dsl.dummy 10
execute unless score #custom_mob_cap dsl.dummy matches -2147483648..2147483647 run scoreboard players set #custom_mob_cap dsl.dummy 0
# set timers
function dsl:technical/second
function dsl:technical/mob_spawning/timer
# other
function dsl:item/bowl_of_foob/load_storage
