data remove storage vrm:temp root.macro_input
data modify storage vrm:temp root.macro_input.data set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}

data modify storage vrm:temp root.macro_input.in set from entity @s UUID
execute store result score $uuid0 vrm.dummy run data get storage vrm:temp root.macro_input.in[0]
execute store result score $uuid1 vrm.dummy run data get storage vrm:temp root.macro_input.in[1]
execute store result score $uuid2 vrm.dummy run data get storage vrm:temp root.macro_input.in[2]
execute store result score $uuid3 vrm.dummy run data get storage vrm:temp root.macro_input.in[3]

execute store result score 0= vrm.dummy run scoreboard players operation 1= vrm.dummy = $uuid0 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.0 int 1 run scoreboard players operation 0= vrm.dummy %= #256 vrm.dummy
execute store result score 2= vrm.dummy run scoreboard players operation 1= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.1 int 1 run scoreboard players operation 1= vrm.dummy %= #256 vrm.dummy
execute store result score 3= vrm.dummy run scoreboard players operation 2= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.2 int 1 run scoreboard players operation 2= vrm.dummy %= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.3 int 1 run scoreboard players operation 3= vrm.dummy /= #256 vrm.dummy

execute store result score 0= vrm.dummy run scoreboard players operation 1= vrm.dummy = $uuid1 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.4 int 1 run scoreboard players operation 0= vrm.dummy %= #256 vrm.dummy
execute store result score 2= vrm.dummy run scoreboard players operation 1= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.5 int 1 run scoreboard players operation 1= vrm.dummy %= #256 vrm.dummy
execute store result score 3= vrm.dummy run scoreboard players operation 2= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.6 int 1 run scoreboard players operation 2= vrm.dummy %= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.7 int 1 run scoreboard players operation 3= vrm.dummy /= #256 vrm.dummy

execute store result score 0= vrm.dummy run scoreboard players operation 1= vrm.dummy = $uuid2 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.8 int 1 run scoreboard players operation 0= vrm.dummy %= #256 vrm.dummy
execute store result score 2= vrm.dummy run scoreboard players operation 1= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.9 int 1 run scoreboard players operation 1= vrm.dummy %= #256 vrm.dummy
execute store result score 3= vrm.dummy run scoreboard players operation 2= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.a int 1 run scoreboard players operation 2= vrm.dummy %= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.b int 1 run scoreboard players operation 3= vrm.dummy /= #256 vrm.dummy

execute store result score 0= vrm.dummy run scoreboard players operation 1= vrm.dummy = $uuid3 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.c int 1 run scoreboard players operation 0= vrm.dummy %= #256 vrm.dummy
execute store result score 2= vrm.dummy run scoreboard players operation 1= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.d int 1 run scoreboard players operation 1= vrm.dummy %= #256 vrm.dummy
execute store result score 3= vrm.dummy run scoreboard players operation 2= vrm.dummy /= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.e int 1 run scoreboard players operation 2= vrm.dummy %= #256 vrm.dummy
execute store result storage vrm:temp root.macro_input.data.f int 1 run scoreboard players operation 3= vrm.dummy /= #256 vrm.dummy

function vrm:technical/string_uuid/get_hexes with storage vrm:temp root.macro_input.data
function vrm:technical/string_uuid/concat_uuid with storage vrm:temp root.macro_input.data