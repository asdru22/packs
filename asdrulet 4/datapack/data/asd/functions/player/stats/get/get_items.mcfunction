data modify storage asd:data root.temp.equipment set value {mainhand:{},offhand:{},head:{},chest:{},legs:{},feet:{},Accessories:[{},{},{}]}
# get mainhand item
execute if entity @s[nbt={SelectedItem:{tag:{base:{Type:"melee"}}}}] run data modify storage asd:data root.temp.equipment.mainhand set from entity @s SelectedItem
execute if entity @s[nbt={SelectedItem:{tag:{base:{Type:"ranged"}}}}] run data modify storage asd:data root.temp.equipment.mainhand set from entity @s SelectedItem
execute if entity @s[nbt={SelectedItem:{tag:{base:{Type:"magic"}}}}] run data modify storage asd:data root.temp.equipment.mainhand set from entity @s SelectedItem
#get offhand item
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{base:{Type:"shield"}}}]}] run data modify storage asd:data root.temp.equipment.offhand set from entity @s Inventory[{Slot:-106b}]
#get head item
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{base:{Armor:"helmet"}}}]}] run data modify storage asd:data root.temp.equipment.head set from entity @s Inventory[{Slot:103b}]
#get chest item
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{base:{Armor:"chestplate"}}}]}] run data modify storage asd:data root.temp.equipment.chest set from entity @s Inventory[{Slot:102b}]
#get legs item
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{base:{Armor:"leggings"}}}]}] run data modify storage asd:data root.temp.equipment.legs set from entity @s Inventory[{Slot:101b}]
#get feet item
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{base:{Armor:"boots"}}}]}] run data modify storage asd:data root.temp.equipment.feet set from entity @s Inventory[{Slot:100b}]

execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{base:{Type:"accessory"}}}]}] run data modify storage asd:data root.temp.equipment.Accessories[0] set from entity @s Inventory[{Slot:9b}]
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{base:{Type:"accessory"}}}]}] run data modify storage asd:data root.temp.equipment.Accessories[1] set from entity @s Inventory[{Slot:18b}]
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{base:{Type:"accessory"}}}]}] run data modify storage asd:data root.temp.equipment.Accessories[2] set from entity @s Inventory[{Slot:27b}]

## store level req
execute store result score lvl.mainhand asd.d run data get storage asd:data root.temp.equipment.mainhand.tag.base.LevelRequired
execute store result score lvl.offhand asd.d run data get storage asd:data root.temp.equipment.offhand.tag.base.LevelRequired
execute store result score lvl.head asd.d run data get storage asd:data root.temp.equipment.head.tag.base.LevelRequired
execute store result score lvl.chest asd.d run data get storage asd:data root.temp.equipment.chest.tag.base.LevelRequired
execute store result score lvl.legs asd.d run data get storage asd:data root.temp.equipment.legs.tag.base.LevelRequired
execute store result score lvl.feet asd.d run data get storage asd:data root.temp.equipment.feet.tag.base.LevelRequired
execute store result score lvl.acc1 asd.d run data get storage asd:data root.temp.equipment.Accesories[0].tag.base.LevelRequired
execute store result score lvl.acc2 asd.d run data get storage asd:data root.temp.equipment.Accesories[1].tag.base.LevelRequired
execute store result score lvl.acc3 asd.d run data get storage asd:data root.temp.equipment.Accesories[2].tag.base.LevelRequired