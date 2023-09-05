tag @s add nihility.battery.charged
summon creeper ~ ~.2 ~ {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"",NoAI:1b,CanPickUpLoot:0b,powered:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:19999998,ShowParticles:0b}],Tags:["nihility.battery.display","nihility.entity"]}

execute as @e[type=creeper,tag=nihility.battery.display] at @s as @e[type=end_crystal,tag=nihility.voidlinker_crystal,tag=!nihility.crystal.linked,sort=nearest,limit=1,distance=..15] at @s run function nihility:block/voidlinker/crystal_connect

playsound nihility:block.battery.charge block @a[distance=..16] ~ ~ ~ 1 0.7