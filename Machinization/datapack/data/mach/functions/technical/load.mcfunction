scoreboard objectives add mach.data dummy
scoreboard objectives add mach.temp dummy
scoreboard objectives add mach.using_item dummy
scoreboard objectives add mach.prev_using_item dummy

scoreboard objectives add mach.place_furnace minecraft.used:minecraft.furnace
scoreboard objectives add mach.use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add mach.use_wofas minecraft.used:minecraft.warped_fungus_on_a_stick


function mach:technical/second

scoreboard players set $-1 mach.data -1
scoreboard players set $20 mach.data 20
scoreboard players set $10 mach.data 10
scoreboard players set $64 mach.data 64


gamerule doLimitedCrafting false

tellraw @a [{"translate":"Missing resource pack, please make sure the resource pack is installed correctly","color":"red","bold":true}]

forceload add 0 0
kill 00000016-0000-0042-0000-001600000042
summon minecraft:marker 0.0 0 0.0 {UUID:[I;22,66,22,66],Tags:["mach.trig"]}