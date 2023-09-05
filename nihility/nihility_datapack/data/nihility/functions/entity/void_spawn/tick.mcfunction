execute if score vsfix nihility.data matches 1 if entity @s[scores={nihility.void_score=-2147483648..2147483647}] run function nihility:entity/animation
execute if entity @s[nbt={HurtTime:10s}] run function nihility:entity/void_spawn/when_hit/tint/apply

execute if entity @s[nbt={HurtTime:0s},tag=nihility.mob_hit] run function nihility:entity/void_spawn/when_hit/tint/reset
execute if entity @s[type=wandering_trader,tag=!nihility.entity.sculker] unless entity @s[scores={nihility.void_score=-2147483648..2147483647}] run function nihility:entity/void_spawn/custom/tick

execute if entity @s[tag=nihility.entity.sculker] run tp @s ~ ~ ~ facing entity @p