scoreboard players reset @s adr.dummy

execute if data block ~ ~ ~ item{id:"minecraft:firework_rocket"} align xyz positioned ~.5 ~ ~.5 run function adr:block/decorated_pot/find/summon_marker
execute if data block ~ ~ ~ item{id:"minecraft:barrier",tag:{adr:{}}} align xyz positioned ~.5 ~ ~.5 run function adr:block/decorated_pot/add_rocket