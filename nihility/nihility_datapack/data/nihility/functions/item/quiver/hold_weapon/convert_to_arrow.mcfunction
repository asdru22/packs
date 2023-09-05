data modify storage nihility:storage root.temp.item set from entity @s Inventory[{tag:{smithed:{id:"nihility:quiver"}}}]
execute store result score tot_arrows nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.Quiver
tag @s add nihility.me
execute if score tot_arrows nihility.data matches 1.. run summon armor_stand 0 0 0 {Tags:["nihility.temp"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute if score tot_arrows nihility.data matches 1.. as @e[type=armor_stand,tag=nihility.temp] run function nihility:item/quiver/hold_weapon/stand
execute if score tot_arrows nihility.data matches 0 run function nihility:item/quiver/hold_weapon/no_longer_holding
tag @s remove nihility.me