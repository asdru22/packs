item replace entity @s weapon.mainhand with minecraft:leather_horse_armor
data modify entity @s[nbt={HurtTime:0s}] HandItems[0].tag.display.color set value 16777215
data modify entity @s[nbt=!{HurtTime:0s}] HandItems[0].tag.display.color set value 16753571
#data modify entity @s ArmorItems[3].tag.display.color set value 16777215
data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.nihility.CustomModelData.head
data modify entity @s HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.nihility.CustomModelData.idle
data modify entity @s[predicate=nihility:entity/void_spawn/moving] HandItems[0].tag.display.color set value 0
data modify entity @s[predicate=nihility:entity/void_spawn/moving] HandItems[0].tag.CustomModelData set from entity @s ArmorItems[3].tag.nihility.CustomModelData.moving 