execute positioned ~ ~.8 ~ run summon item ^-.45 ^ ^0.6 {Invulnerable:1b,CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["asd.entity.technical.display_dmg"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute in overworld run data merge block 0 0 0 {Text1:'{"translate":"display.asd.dodge"}'}
execute as @e[type=item,tag=asd.entity.technical.display_dmg,tag=!asd.entity.technical.display_dmg.setup] run function asd:player/displays/indicators/setup
stopsound @s * entity.player.hurt