execute store result score .timer asy.data run data get entity @s Inventory[{Slot:103b}].tag.CustomModelData

tag @s add asy.damage.bloater
scoreboard players set @s smithed.damage 2

execute if score .timer asy.data matches 6901007 run function asy:entity/bloater/explode
execute if score .timer asy.data matches 6901006 run item modify entity @s armor.head asy:bloater/3
execute if score .timer asy.data matches 6901005 run item modify entity @s armor.head asy:bloater/2
execute if score .timer asy.data matches 6901004 run item modify entity @s armor.head asy:bloater/1

function #smithed.damage:entity/apply
tag @s remove asy.damage.bloater
scoreboard players reset .explode asy.data