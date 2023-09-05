scoreboard players set $range mach.data 300
scoreboard players set $bounce mach.data 10
summon marker ~ ~ ~ {UUID:[I;22,11,54,4]}
tag @s add mach.me
tp 00000016-0000-000b-0000-003600000004 ~ ~ ~ ~ ~
execute as 00000016-0000-000b-0000-003600000004 run function mach:item/midnight_howl/cast/loop
tag @s remove mach.me