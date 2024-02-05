tag @s add dsl.entity.hurt

execute store result score $color dsl.dummy run data get entity @s item.tag.display.color
execute store result entity @s item.tag.display.color int 1 run scoreboard players add $color dsl.dummy 1

execute on vehicle run function dsl:entity/item_display_riding/hurt/vehicle
$playsound dsl:entity.$(id).hurt hostile @a[distance=..16]