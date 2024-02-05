particle minecraft:item furnace{CustomModelData:882005} ~ ~.5 ~ 0.4 0.4 0.4 0.07 100 normal

execute as @e[distance=..2,type=item,predicate=dsl:entity/birch_leaves_drop] at @s run function dsl:block/caelestiquoia_bush/drop_item
kill @s