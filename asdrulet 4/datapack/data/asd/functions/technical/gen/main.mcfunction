data modify storage asd:storage root.gen.out set value []

summon marker -20 10 -20 {Tags:["gen"]}
scoreboard players set x asd.d 0
scoreboard players set z asd.d 0
execute as @e[type=marker,tag=gen] at @s run function asd:technical/gen/move_x

data modify block 1 13 1 Items[0].tag.copy set from storage asd:storage root.gen.out

tellraw @a "DONE"