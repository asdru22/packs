execute as @e[type=#fhats:wears_helmet,tag=!smithed.strict] if items entity @s armor.head leather_helmet[minecraft:custom_data~{fhats:{hat:true}}] run data modify entity @s ArmorItems[3].id set value "minecraft:leather_horse_armor"

schedule function fhats:technical/1_second 1s replace