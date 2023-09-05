## set head
item replace entity @s armor.head with minecraft:leather_horse_armor{CustomModelData:6901011,display:{color:16777215}}
tag @s remove nihility.entity.sculker.close
tag @s add nihility.entity.sculker.open
## set body
data modify entity @s HandItems[0].id set value "minecraft:leather_horse_armor"
data modify entity @s HandItems[0].tag.CustomModelData set value 6901012
data modify entity @s HandItems[0].tag.display.color set value 16777215

data merge entity @s {Invulnerable:0b}