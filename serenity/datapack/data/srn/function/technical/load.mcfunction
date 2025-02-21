scoreboard objectives add srn.dummy dummy
scoreboard objectives add srn.dummy2 dummy

scoreboard objectives add srn.id dummy

scoreboard objectives add srn.using_item dummy
scoreboard objectives add srn.using_item_new dummy

scoreboard objectives add srn.throw_lingering_potion used:lingering_potion
scoreboard objectives add srn.throw_splash_potion used:splash_potion

scoreboard objectives add srn.current_xp xp

scoreboard objectives add srn.used_warped_fungus_on_a_stick used:warped_fungus_on_a_stick

scoreboard objectives add srn.used_item_frame used:item_frame

scoreboard objectives add srn.leave_game custom:leave_game

execute positioned 3000000 ~ 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{count:1b,id:"minecraft:stone",Slot:0b}]}

function srn:entity/natural_spawning/timer
function srn:technical/timers/second
execute unless score $mob_cap srn.dummy matches -2147483648..2147483647 run scoreboard players set $mob_cap srn.dummy 0

scoreboard players set #100 srn.dummy 100

execute unless data storage srn:storage root.players[] run data modify storage srn:storage root.players set value []

team add srn.no_nametag
team modify srn.no_nametag nametagVisibility never