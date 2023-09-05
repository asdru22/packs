### Custom Model Data
execute if entity @s[scores={asy.symbiote_id=1}] run scoreboard players set .cmd asy.data 6900999
execute if entity @s[scores={asy.symbiote_id=2}] run scoreboard players set .cmd asy.data 6901002
execute if entity @s[scores={asy.symbiote_id=3}] run scoreboard players set .cmd asy.data 6901003
execute if entity @s[scores={asy.symbiote_id=4}] run scoreboard players set .cmd asy.data 6901004
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{asy:{symbiote_marker:1b}}}]}] unless data entity @s Inventory[{Slot:103b}].tag.asy.OldHelmet run function asy:entity/player/symbiote_leech/old_helmet_data

execute store result storage asy:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players operation .cmd asy.data += @s asy.symbiote
item modify entity @s armor.head asy:copy_nbt