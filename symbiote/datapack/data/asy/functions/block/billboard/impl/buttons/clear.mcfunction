execute as @e[type=slime,tag=asy.click] if score @s asy.id = .temp asy.data run function asy:block/billboard/impl/buttons/kill
execute if entity @s[tag=!asy.save] run function asy:block/billboard/impl/buttons/kill
tag @s remove asy.save

execute if data entity @s ArmorItems[3].tag.asy.click at @s run summon slime ~0.7 ~0.15 ~ {Size:0,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asy.20_ticks","asy.billboard","asy.click","asy.setup","asy.button","asy.display"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}]}