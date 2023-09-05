execute if entity @s[tag=!asd.save] run function asd:block/billboard/impl/buttons/kill

tag @s remove asd.save
execute if data entity @s ArmorItems[3].tag.asd.click at @s run summon slime ~0.7 ~0.15 ~ {Size:0,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asd.1second","asd.billboard","asd.click","asd.setup","asd.button","asd.display","asd.entity"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}