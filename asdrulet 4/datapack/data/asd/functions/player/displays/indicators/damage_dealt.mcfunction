summon item ~ ~1.8 ~ {Invulnerable:1b,Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["asd.setup"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute in overworld run data merge block 0 0 0 {Text1:'{"translate":"display.asd.damage_dealt","with":[{"translate":"space.-max","with":[""]},{"score":{"name":"s.damage","objective":"asd.d"}},{"nbt":"root.temp.attack.type.display","storage":"asd:data","interpret":true},{"translate":"space.-max","with":[""]}]}'}

execute as @e[type=item,tag=asd.setup] run function asd:player/displays/indicators/setup
execute if score lifesteal.val asd.d matches 1.. run function asd:player/displays/indicators/lifesteal