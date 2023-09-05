data modify storage asd:data root.temp.element.list set value []
scoreboard players set full asd.d 0
scoreboard players set e.wind asd.d 0
scoreboard players set e.acid asd.d 0
scoreboard players set e.flesh asd.d 0
scoreboard players set e.electric asd.d 0

data remove storage asd:data root.temp.element.t
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:103b}].tag.base.Element
execute if data storage asd:data root.temp.element.t run execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:102b}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:101b}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:100b}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s SelectedItem.tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:-106b,tag:{base:{Type:"shield"}}}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:9b,tag:{base:{Type:"accessory"}}}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:18b,tag:{base:{Type:"accessory"}}}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort
data modify storage asd:data root.temp.element.t set from entity @s Inventory[{Slot:27b,tag:{base:{Type:"accessory"}}}].tag.base.Element
execute if data storage asd:data root.temp.element.t run function asd:player/displays/actionbar/sort

scoreboard players set empty asd.d 9
scoreboard players operation empty asd.d -= full asd.d

execute if score e.wind asd.d matches 1.. run function asd:player/displays/actionbar/iter_wind
execute if score e.acid asd.d matches 1.. run function asd:player/displays/actionbar/iter_acid
execute if score e.flesh asd.d matches 1.. run function asd:player/displays/actionbar/iter_flesh
execute if score e.electric asd.d matches 1.. run function asd:player/displays/actionbar/iter_electric


data modify storage asd:data root.temp.element.t set from storage asd:data root.temp.element.list[0]

execute if data storage asd:data root.temp.element{t:'{"translate":"display.asd.bar.1","color":"#E8FFF6","font":"asd:main"}'} run data modify storage asd:data root.temp.element.list[0] set value '{"translate":"display.asd.bar.0","color":"#E8FFF6","font":"asd:main"}'
execute if data storage asd:data root.temp.element{t:'{"translate":"display.asd.bar.1","color":"#9EFF54","font":"asd:main"}'} run data modify storage asd:data root.temp.element.list[0] set value '{"translate":"display.asd.bar.0","color":"#9EFF54","font":"asd:main"}'
execute if data storage asd:data root.temp.element{t:'{"translate":"display.asd.bar.1","color":"#9C2B27","font":"asd:main"}'} run data modify storage asd:data root.temp.element.list[0] set value '{"translate":"display.asd.bar.0","color":"#9C2B27","font":"asd:main"}'
execute if data storage asd:data root.temp.element{t:'{"translate":"display.asd.bar.1","color":"#00EEFF","font":"asd:main"}'} run data modify storage asd:data root.temp.element.list[0] set value '{"translate":"display.asd.bar.0","color":"#00EEFF","font":"asd:main"}'

execute if score empty asd.d matches 1.. run function asd:player/displays/actionbar/iter_empty
data modify storage asd:data root.temp.element.list insert 0 value '{"translate":"space.25","font":"default"}'

execute if score full asd.d matches 0 run data modify storage asd:data root.temp.element.list set value ['""']
item modify entity @s enderchest.0 asd:element_bar