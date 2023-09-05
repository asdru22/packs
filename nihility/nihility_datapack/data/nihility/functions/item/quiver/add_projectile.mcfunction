data modify storage nihility:storage root.temp.list set from storage nihility:storage root.temp.item.tag.nihility.QuiverItems
## Arrows in quiver
execute store result score arrows nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.Quiver
execute store result score inarrows nihility.data run data get storage nihility:storage root.temp.item.tag.Items[0].Count
scoreboard players operation arrows nihility.data += inarrows nihility.data
execute store result storage nihility:storage root.temp.item.tag.nihility.Quiver int 1 run scoreboard players get arrows nihility.data
## --------------
data modify storage nihility:storage root.temp.input set from storage nihility:storage root.temp.item.tag.Items[0]
data remove storage nihility:storage root.temp.input.Count

scoreboard players set iter nihility.data 0
scoreboard players reset findSame nihility.data

function nihility:item/quiver/list

data remove storage nihility:storage root.temp.item.tag.Items[0]

execute if score arrows nihility.data matches 1.. positioned ~ -100 ~ run function nihility:item/quiver/lore/main