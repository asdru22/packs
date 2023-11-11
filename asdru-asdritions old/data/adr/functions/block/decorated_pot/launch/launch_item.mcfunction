$summon firework_rocket ^ ^1 ^ {LifeTime:30s,Motion:[0.0d,1.0d,0.0d],ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:$(tag)}}
data remove block ~ ~ ~ item.tag.adr.fireworks[0]
execute unless data block ~ ~ ~ item.tag.adr.fireworks[] run function adr:block/decorated_pot/launch/stop