summon slime ~ ~ ~1.95 {Size:1,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asy.20_ticks","asy.billboard","asy.button","asy.button.up","asy.setup"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}],Glowing:1b}
summon slime ~ ~ ~-1.95 {Size:1,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asy.20_ticks","asy.billboard","asy.button","asy.button.down","asy.setup"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}],Glowing:1b}
summon slime ~ ~-1.95 ~ {Size:1,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asy.20_ticks","asy.billboard","asy.button","asy.button.left","asy.setup"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}],Glowing:1b}
summon slime ~ ~1.95 ~ {Size:1,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["asy.20_ticks","asy.billboard","asy.button","asy.button.right","asy.setup"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:11,Amplifier:10b,Duration:200,ShowParticles:0b},{Id:14,Amplifier:10b,Duration:200,ShowParticles:0b}],Glowing:1b}
execute as @e[type=slime,tag=asy.billboard,tag=asy.setup] run function asy:block/billboard/handling/setup