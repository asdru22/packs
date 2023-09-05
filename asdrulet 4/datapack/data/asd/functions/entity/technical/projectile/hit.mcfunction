effect give @s[type=#asd:undead] instant_health 1 30 true
effect give @s[type=!#asd:undead] instant_damage 1 30 true

## remove hp based on damage dealt by the player
scoreboard players operation @s asd.stat.health.current -= s.damage asd.d
function asd:entity/mob/update_hp_display
execute if score @s asd.stat.health.current matches ..0 run function asd:entity/mob/on_death

summon item ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211,Tags:["asd.setup"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{CustomModelData:1}}}
execute in overworld run data merge block 0 0 0 {Text1:'{"translate":"display.asd.damage_dealt","with":[{"score":{"name":"s.damage","objective":"asd.d"}},{"text":"\\u0039","font":"asd:main"}]}'}
execute as @e[type=item,tag=asd.setup] run function asd:player/displays/indicators/setup
execute if score lifesteal.val asd.d matches 1.. run function asd:player/displays/indicators/lifesteal