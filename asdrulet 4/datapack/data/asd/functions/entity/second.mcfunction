execute if entity @s[tag=asd.entity.mob] run function asd:entity/mob/second
execute if entity @s[type=#asd:projectiles,nbt={inGround:1b}] run function asd:entity/technical/projectile/on_ground


execute if entity @s[type=slime,tag=asd.billboard] run data merge entity @s {ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}