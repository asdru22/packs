summon vex ~ ~ ~ {CustomName:'{"translate":"entity.asy.scraper","italic":false}',Silent:1b,Tags:["asy.scraper","asy.symbiote","asy.entity","asy.entity.custom","asy.setup","smithed.entity"],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16777215,CustomModelData:6901000}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:200000,ShowParticles:0b}],ArmorDropChances:[-1000.00f,-1000.00f,-1000.00f,-1000.00f],Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1}]}

execute as @e[type=vex,tag=asy.scraper,tag=asy.setup] run function asy:entity/symbiote/setup
