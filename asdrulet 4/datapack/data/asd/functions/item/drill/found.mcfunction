scoreboard players operation @s asd.stat.electricity.current -= d.0 asd.d
playsound minecraft:item.armor.equip_iron block @s ~ ~ ~ 0.5
scoreboard players reset .dist asd.d
summon marker ~ ~ ~ {Tags:["asd.pos"]}
execute as @e[type=marker,tag=asd.pos,distance=..0.01,limit=1] run function asd:item/drill/as_marker
data modify storage asd:data root.temp.prev_pos set from entity @s EnderItems[0].tag.asd.pos

data modify storage asd:data root.temp.item set from entity @s EnderItems[0]
data modify storage asd:data root.temp.item.tag.asd.pos set from storage asd:data root.temp.pos
item modify entity @s enderchest.0 asd:copy_nbt

execute store success score .success asd.d run data modify storage asd:data root.temp.prev_pos set from entity @s EnderItems[0].tag.asd.pos
execute if score .success asd.d matches 1 run scoreboard players set @s asd.block_break_progress 0

execute if score .success asd.d matches 0 run function asd:item/drill/drilling