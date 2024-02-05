data modify storage a:data root.equipment set value {}

# mainhand
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.mainhand set from block ~ ~ ~ Items[0].tag.a{weapon:true}


# offhand
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s weapon.offhand
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.offhand set from block ~ ~ ~ Items[0].tag.a{type:"shield"} 

# helmet
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s armor.head
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.helmet set from block ~ ~ ~ Items[0].tag.a{type:"helmet"} 

# chestplate
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s armor.chest
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.chestplate set from block ~ ~ ~ Items[0].tag.a{type:"chestplate"}

# leggings
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s armor.legs
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.leggings set from block ~ ~ ~ Items[0].tag.a{type:"leggings"}

# boots
item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.0 from entity @s armor.feet
execute if data block ~ ~ ~ Items[0] run data modify storage a:data root.equipment.boots set from block ~ ~ ~ Items[0].tag.a{type:"boots"}

item replace block ~ ~ ~ container.0 with stone