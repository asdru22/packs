$summon item ~ ~ ~ {Motion:[0.0d,0.3d,0.0d],Item:{id:"minecraft:firework_rocket",Count:1b,tag:$(tag)}}

data remove storage adr:storage root.temp.fireworks[0]
execute if data storage adr:storage root.temp.fireworks[] run function adr:block/decorated_pot/destroy/make_item with storage adr:storage root.temp.fireworks[0]