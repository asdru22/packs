execute positioned ~ ~.8 ~ run summon item ^-.45 ^ ^0.6 {Invulnerable:1b,Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["asd.setup"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute in overworld run data merge block 0 0 0 {Text1:'{"translate":"display.asd.damage_recived","with":[{"translate":"space.-max","with":[""]},{"text":"-"},{"score":{"name":"true_dmg_recived","objective":"asd.d"}},{"text":"\\u000e","color":"white","font":"asd:main"},{"translate":"space.-max","with":[""]}]}'}
execute as @e[type=item,tag=asd.setup] run function asd:player/displays/indicators/setup
effect give @s instant_damage 1 30 true 
effect give @s instant_health 1 30 true 