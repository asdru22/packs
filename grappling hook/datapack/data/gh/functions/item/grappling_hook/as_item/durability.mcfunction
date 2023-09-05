execute store result score $durability gh.data run data get storage gh:storage root.temp.item.tag.Damage
scoreboard players add $durability gh.data 1
execute store result storage gh:storage root.temp.item.tag.Damage int 1 run scoreboard players get $durability gh.data

execute if score $durability gh.data matches 336.. run function gh:item/grappling_hook/as_item/break

execute unless data storage gh:storage root.temp.item.Slot run item modify entity @s weapon.mainhand gh:durability
execute if data storage gh:storage root.temp.item.Slot run item modify entity @s weapon.mainhand gh:durability