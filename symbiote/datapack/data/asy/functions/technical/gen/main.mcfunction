data modify storage asy:storage root.gen.out set value []

fill 20 103 -20 -20 103 20 air
summon marker -20 98 -20 {Tags:["gen"]}
scoreboard players set x asy.data 0
scoreboard players set z asy.data 0
execute as @e[type=marker,tag=gen] at @s run function asy:technical/gen/move_x

data modify block 0 102 2 Items[0].tag.copy set from storage asy:storage root.gen.out

say DONE