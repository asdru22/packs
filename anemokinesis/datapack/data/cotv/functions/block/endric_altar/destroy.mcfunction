execute as @e[type=item,distance=..3,predicate=cotv:item/furnace,limit=1] run function cotv:block/endric_altar/drop
particle item furnace{CustomModelData:6901002} ~ ~.3 ~ 0.3 0.3 0.3 0.05 10
tp @s ~ ~-1000 ~
execute positioned ~ ~1 ~ run kill @e[type=armor_stand,limit=1,sort=nearest,tag=cotv.block.endric.altar.display,distance=..0.2]
kill @s 