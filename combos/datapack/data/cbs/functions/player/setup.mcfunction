scoreboard players reset @s cbs.clicks

scoreboard players set @s cbs.stat.range 60
scoreboard players set @s cbs.stat.max_stamina 1000

execute store result score @s cbs.id run scoreboard players add #IDS cbs.dummy 1
execute store result storage cbs:storage root.temp.prefix.id int 1 run scoreboard players get @s cbs.id

function cbs:player/death/respawn

function cbs:display/effects/setup with storage cbs:storage root.temp.prefix

function cbs:display/bossbar/setup with storage cbs:storage root.temp.prefix


scoreboard players set @s cbs.players 1