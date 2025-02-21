# Add the health amount to the player score.
$scoreboard players set @s srn.dummy $(amount)
# Calculate the health difference required.
execute store result score #health.amount srn.dummy run attribute @s minecraft:generic.max_health get 1000
execute store result score #health.current srn.dummy run data get entity @s Health 1000

scoreboard players operation #health.amount srn.dummy -= #health.current srn.dummy

# Apply new max health attributes.
data modify storage srn:storage root.temp.heal set value {}
execute store result storage srn:storage root.temp.heal.amount float 0.001 run scoreboard players operation #health.amount srn.dummy -= @s srn.dummy

attribute @s minecraft:generic.max_health modifier remove f87623f8-bedd-48e9-af01-f15e59176b7d
function srn:entity/player/heal/apply_attribute with storage srn:storage root.temp.heal

# Set flag and apply instant health to trigger the advancement.
effect give @s minecraft:instant_health 1 28 true