execute store result score d.0 cotv.dummy run data get block ~ ~ ~ CookingTimes[3]
scoreboard players add d.0 cotv.dummy 80
execute store result block ~ ~ ~ CookingTimes[3] int 1 run scoreboard players get d.0 cotv.dummy
execute if score d.0 cotv.dummy matches 600.. run function cotv:block/void_campfire/cook/slot3_pop