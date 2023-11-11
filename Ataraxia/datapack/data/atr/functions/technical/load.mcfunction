scoreboard objectives add atr.int dummy

scoreboard objectives add atr.stat.current_health dummy
scoreboard objectives add atr.stat.max_health dummy

scoreboard objectives add atr.stat.health_regeneration dummy

scoreboard objectives add atr.regeneration_cooldown dummy

scoreboard objectives add atr.stat.current_mana dummy
scoreboard objectives add atr.stat.max_mana dummy

scoreboard objectives add atr.stat.base_damage dummy

scoreboard objectives add atr.stat.defense dummy

scoreboard objectives add atr.equipment.new dummy
scoreboard objectives add atr.equipment.old dummy

scoreboard objectives add atr.xp.current dummy
scoreboard objectives add atr.xp.max dummy
scoreboard objectives add atr.xp.level dummy

scoreboard objectives add atr.id dummy

scoreboard objectives add atr.leave_game custom:leave_game


scoreboard players set #0 atr.int 0
scoreboard players set #1 atr.int 1
scoreboard players set #2 atr.int 2
scoreboard players set #5 atr.int 5
scoreboard players set #100 atr.int 100
scoreboard players set #1000 atr.int 1000

gamerule doImmediateRespawn true

schedule function atr:technical/second 1t replace

execute positioned 3000000 ~ 3066 run forceload add ~ ~
setblock 3000000 0 3066 air
setblock 3000000 0 3066 barrel{Items:[{Count:1b,id:"minecraft:stone",Slot:0b}]}

execute unless data storage atr:storage root.players[] run data modify storage atr:storage root.players set value []