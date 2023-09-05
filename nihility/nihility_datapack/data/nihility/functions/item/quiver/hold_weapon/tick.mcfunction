execute store result score val nihility.data run clear @s bundle{smithed:{id:"nihility:quiver"}} 0
execute store result score arrows nihility.data run data get entity @s Inventory[{tag:{smithed:{id:"nihility:quiver"}}}].tag.nihility.Quiver
execute if score val nihility.data matches 1 if score arrows nihility.data matches 1.. run tag @s add nihility.hold_arrow_consuming

execute if entity @s[tag=nihility.hold_arrow_consuming] run function nihility:item/quiver/hold_weapon/convert_to_arrow