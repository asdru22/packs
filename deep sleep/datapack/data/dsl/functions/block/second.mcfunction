execute if entity @s[tag=dsl.brewing_stand] if block ~ ~ ~ minecraft:brewing_stand{Items:[{tag:{dsl:{}}}]} run function dsl:block/brewing_stand/brewing/second_clock

execute if entity @s[tag=dsl.prevent_darkening] run function dsl:block/lighting/main
