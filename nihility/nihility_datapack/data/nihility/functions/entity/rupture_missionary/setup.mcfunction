data modify entity @s Offers.Recipes set value [{maxUses:2147483647,uses:0,priceMultiplier:1f,specialPrice:0,demand:0,xp:1,buy:{id:"minecraft:book",Count:1b},buyB:{id:"minecraft:stone",Count:2b},sell:{id:"minecraft:blackstone",Count:1b}}]

loot replace entity @s weapon.mainhand 1 loot nihility:item/rescinded_bar
data modify entity @s HandItems[0].Count set value 2b
data modify entity @s Offers.Recipes[0].buyB set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand loot nihility:item/rupture_entry_1
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]




item replace entity @s weapon.mainhand with structure_block{CustomModelData:6906102}