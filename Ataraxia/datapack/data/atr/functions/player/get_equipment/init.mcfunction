data modify storage atr:storage root.temp.equipment set value {}

data modify storage atr:storage root.temp.equipment.mainhand set from entity @s SelectedItem{tag:{atr:{type:"weapon"}}}.tag.atr
data modify storage atr:storage root.temp.equipment.offhand set from entity @s Inventory[{Slot:-106b,tag:{atr:{type:"accessory"}}}].tag.atr

data modify storage atr:storage root.temp.equipment.helmet set from entity @s Inventory[{Slot:103b,tag:{atr:{}}}].tag.atr
data modify storage atr:storage root.temp.equipment.chestplate set from entity @s Inventory[{Slot:102b,tag:{atr:{}}}].tag.atr
data modify storage atr:storage root.temp.equipment.leggings set from entity @s Inventory[{Slot:101b,tag:{atr:{}}}].tag.atr
data modify storage atr:storage root.temp.equipment.boots set from entity @s Inventory[{Slot:100b,tag:{atr:{}}}].tag.atr

#mainhand level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.mainhand.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.mainhand
#offhand level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.offhand.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.offhand
#helmet level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.helmet.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.helmet
#chestplate level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.chestplate.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.chestplate
#leggings level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.leggings.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.leggings
#boots level check
execute store result score #item_level atr.int run data get storage atr:storage root.temp.equipment.boots.level_required
execute if score @s atr.xp.level < #item_level atr.int run data remove storage atr:storage root.temp.equipment.boots