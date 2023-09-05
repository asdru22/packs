data modify storage asd:data root.temp.container set from block ~ ~-1 ~ Items
execute store result score occupied asd.d if data storage asd:data root.temp.container[]
data modify storage asd:data root.temp.container_shaped set value {1:[{},{},{}],2:[{},{},{}],3:[{},{},{}]}

execute if data storage asd:data root.temp.container[{Slot:0b}] run data modify storage asd:data root.temp.container_shaped.1[0] set from storage asd:data root.temp.container[{Slot:0b}]
execute unless data storage asd:data root.temp.container[{Slot:0b}] run data modify storage asd:data root.temp.container_shaped.1[0] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:1b}] run data modify storage asd:data root.temp.container_shaped.1[1] set from storage asd:data root.temp.container[{Slot:1b}]
execute unless data storage asd:data root.temp.container[{Slot:1b}] run data modify storage asd:data root.temp.container_shaped.1[1] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:2b}] run data modify storage asd:data root.temp.container_shaped.1[2] set from storage asd:data root.temp.container[{Slot:2b}]
execute unless data storage asd:data root.temp.container[{Slot:2b}] run data modify storage asd:data root.temp.container_shaped.1[2] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:3b}] run data modify storage asd:data root.temp.container_shaped.2[0] set from storage asd:data root.temp.container[{Slot:3b}]
execute unless data storage asd:data root.temp.container[{Slot:3b}] run data modify storage asd:data root.temp.container_shaped.2[0] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:4b}] run data modify storage asd:data root.temp.container_shaped.2[1] set from storage asd:data root.temp.container[{Slot:4b}]
execute unless data storage asd:data root.temp.container[{Slot:4b}] run data modify storage asd:data root.temp.container_shaped.2[1] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:5b}] run data modify storage asd:data root.temp.container_shaped.2[2] set from storage asd:data root.temp.container[{Slot:5b}]
execute unless data storage asd:data root.temp.container[{Slot:5b}] run data modify storage asd:data root.temp.container_shaped.2[2] set value {id:"minecraft:air"}


execute if data storage asd:data root.temp.container[{Slot:6b}] run data modify storage asd:data root.temp.container_shaped.3[0] set from storage asd:data root.temp.container[{Slot:6b}]
execute unless data storage asd:data root.temp.container[{Slot:6b}] run data modify storage asd:data root.temp.container_shaped.3[0] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:7b}] run data modify storage asd:data root.temp.container_shaped.3[1] set from storage asd:data root.temp.container[{Slot:7b}]
execute unless data storage asd:data root.temp.container[{Slot:7b}] run data modify storage asd:data root.temp.container_shaped.3[1] set value {id:"minecraft:air"}

execute if data storage asd:data root.temp.container[{Slot:8b}] run data modify storage asd:data root.temp.container_shaped.3[2] set from storage asd:data root.temp.container[{Slot:8b}]
execute unless data storage asd:data root.temp.container[{Slot:8b}] run data modify storage asd:data root.temp.container_shaped.3[2] set value {id:"minecraft:air"}

data remove storage asd:data root.temp.container_shaped.1[].Count
data remove storage asd:data root.temp.container_shaped.1[].Slot
data remove storage asd:data root.temp.container_shaped.2[].Count
data remove storage asd:data root.temp.container_shaped.2[].Slot
data remove storage asd:data root.temp.container_shaped.3[].Count
data remove storage asd:data root.temp.container_shaped.3[].Slot