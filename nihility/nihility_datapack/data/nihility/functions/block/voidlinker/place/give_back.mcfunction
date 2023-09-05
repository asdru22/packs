scoreboard players set temp nihility.data 1

item replace block ~ ~-1.5 ~ container.0 with stone
data modify block ~ ~-1.5 ~ Items[{Slot:0b}] set from entity @s Item
item replace entity @a[advancements={nihility:technical/block/interact/voidlinker=true}] weapon.mainhand from block ~ ~-1.5 ~ container.0
item replace block ~ ~-1.5 ~ container.0 with air
kill @s