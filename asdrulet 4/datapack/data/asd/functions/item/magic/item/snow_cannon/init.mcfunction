execute anchored eyes positioned ^ ^ ^.3 run summon potion ~ ~ ~ {Silent:1b,Tags:["asd.1tick","asd.entity","asd.potion","asd.vsfix"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomPotionColor:16777215,CustomPotionEffects:[{Id:6,Amplifier:0b,Duration:10,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:10,ShowParticles:0b}]}}}
execute rotated as @s positioned 0.0 0 0.0 run tp @e[type=marker,tag=asd.trig,limit=1] ^ ^ ^0.5
data modify storage asd:data root.temp.UUID set from entity @s UUID
execute as @e[type=potion,tag=asd.potion,tag=!asd.setup] run function asd:item/magic/item/snow_cannon/setup
playsound entity.snowball.throw player @a[distance=..10] ~ ~ ~ 50 0.5