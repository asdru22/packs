data modify storage a:data root.particle set value {motion:[0d,0d,0d],frames:[2,3,4,5,6]}
execute store result storage a:data root.particle.motion[0] double 0.1 run random value -1..1
execute store result storage a:data root.particle.motion[1] double 0.1 run random value -1..1
execute store result storage a:data root.particle.motion[2] double 0.1 run random value -1..1

summon item ~ ~ ~ {Age:5800,Tags:[tick,motion_fix,particle],Item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:1}},NoGravity:1b,Silent:1b,PickupDelay:32767,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",Tags:[particle,tick],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:2,display:{color:16777215}}},billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,0f]}}]}

execute as @e[type=item_display,limit=1,sort=nearest,tag=particle,tag=!setup] run function a:particle/setup