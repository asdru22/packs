execute if block ~ ~-1 ~ #adr:exposed_flame if data block ~ ~ ~ item{id:"minecraft:barrier",tag:{adr:{}}} run scoreboard players add @s[tag=!adr.decorated_pot.launching] adr.dummy 1

execute if score @s adr.dummy matches 10.. run function adr:block/decorated_pot/launch/init