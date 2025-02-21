# Increments durability on a specific slot of the player (also handles breaking)

# Increments the damage value

$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:1}]] if predicate srn:chance/1_2 run return 1
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:2}]] unless predicate srn:chance/1_3 run return 2
$execute if items entity @s $(slot) *[minecraft:enchantments~[{enchantments:"minecraft:unbreaking",levels:3}]] unless predicate srn:chance/1_4 run return 3


execute store result score $temp srn.dummy run data get storage srn:storage root.temp.item.components."minecraft:damage"

$execute store result storage srn:macro root.damage int 1 run scoreboard players add $temp srn.dummy $(amount)
$data modify storage srn:macro root.slot set value $(slot)
function srn:technical/macros/damage_slot/damage with storage srn:macro root

# Anything after this line runs if the item should break
$execute if items entity @s $(slot) *[minecraft:damage~{durability:{min:1}}] run return 0

$item modify entity @s $(slot) srn:decrease_count/1
execute at @s run function srn:technical/macros/damage_slot/particle with storage srn:storage root.temp
playsound minecraft:entity.item.break player @a[distance=..16]