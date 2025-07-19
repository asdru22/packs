# Add the health amount to the player score.
$scoreboard players set @s cgn.heal $(amount)
# Calculate the health difference required.
execute store result score #health.amount cgn.heal run attribute @s minecraft:max_health get 1000
execute store result score #health.current cgn.heal run data get entity @s Health 1000

scoreboard players operation #health.amount cgn.heal -= #health.current cgn.heal

# Apply new max health attributes.
data remove storage cgn:macro root
execute store result storage cgn:macro root.amount float 0.001 run scoreboard players operation #health.amount cgn.heal -= @s cgn.heal

attribute @s minecraft:max_health modifier remove cgn:heal
function cgn:entity/player/heal/apply_attribute with storage cgn:macro root

# Set flag and apply instant health to trigger the advancement.
effect give @s minecraft:instant_health 1 28 true