data modify storage nihility:storage root.temp.item set from entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] Inventory[{Slot:-106b}]
data modify storage nihility:storage root.temp.item set from entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] SelectedItem

function nihility:item/wand_dmg

scoreboard players set mob_cast nihility.data 0
scoreboard players set distance nihility.data 15
scoreboard players set bounces nihility.data 0
advancement revoke @s only nihility:technical/player/hit_slime
execute anchored eyes positioned ^ ^ ^ if entity @e[type=slime,tag=nihility.slime,distance=..5,tag=!nihility.bounce] facing entity @e[type=slime,tag=nihility.slime,distance=..5,tag=!nihility.bounce,sort=nearest,limit=1] eyes run function nihility:item/slime_slinger_staff/cast