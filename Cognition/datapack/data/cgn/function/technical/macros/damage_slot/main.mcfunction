# Increments durability on a specific slot of the player (also handles breaking)

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:1}]] if predicate cgn:random_chance/1_2 run return 1
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:2}]] unless predicate cgn:random_chance/1_3 run return 2
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:3}]] unless predicate cgn:random_chance/1_4 run return 3

execute store result score $temp cgn.dummy run data get storage cgn:storage root.temp.item.components."minecraft:damage"

data remove storage cgn:macro root.damage
$execute store result storage cgn:macro root.damage int 1 run scoreboard players add $temp cgn.dummy $(amount)
$data modify storage cgn:macro root.slot set value $(slot)

function cgn:technical/macros/damage_slot/damage with storage cgn:macro root

# Anything after this line runs if the item should break
$execute if items entity @s $(slot) *[minecraft:damage~{durability:{min:1}}] run return 0

$item modify entity @s $(slot) cgn:decrease_count
execute at @s run function cgn:technical/macros/damage_slot/particle with storage cgn:storage root.temp
playsound minecraft:entity.item.break player @a[distance=..16]