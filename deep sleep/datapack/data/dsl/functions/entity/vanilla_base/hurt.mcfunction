# apply hurt effect
tag @s add dsl.entity.hurt
execute store result score $color dsl.dummy run data get entity @s ArmorItems[3].tag.display.color
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players add $color dsl.dummy 1
# sounds
$playsound dsl:entity.$(id).hurt hostile @a[distance=..16]

execute store result score $health dsl.dummy run data get entity @s Health -10
data merge entity @s {Health:1000f}
scoreboard players add $health dsl.dummy 10000
scoreboard players operation @s dsl.dummy -= $health dsl.dummy

execute if entity @s[scores={dsl.dummy=..0}] run function dsl:entity/vanilla_base/death with entity @s ArmorItems[3].tag.dsl