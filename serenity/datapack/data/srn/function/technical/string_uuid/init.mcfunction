data modify storage srn:storage root.temp set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage srn:storage root.temp.in set from entity @s UUID

execute store result score 0= srn.dummy store result score 1= srn.dummy run data get storage srn:storage root.temp.in[0]
execute store result storage srn:storage root.temp.0 int 1 run scoreboard players operation 0= srn.dummy %= #256 srn.dummy
execute store result score 2= srn.dummy run scoreboard players operation 1= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.1 int 1 run scoreboard players operation 1= srn.dummy %= #256 srn.dummy
execute store result score 3= srn.dummy run scoreboard players operation 2= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.2 int 1 run scoreboard players operation 2= srn.dummy %= #256 srn.dummy
execute store result storage srn:storage root.temp.3 int 1 run scoreboard players operation 3= srn.dummy /= #256 srn.dummy

execute store result score 0= srn.dummy store result score 1= srn.dummy run data get storage srn:storage root.temp.in[1]
execute store result storage srn:storage root.temp.4 int 1 run scoreboard players operation 0= srn.dummy %= #256 srn.dummy
execute store result score 2= srn.dummy run scoreboard players operation 1= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.5 int 1 run scoreboard players operation 1= srn.dummy %= #256 srn.dummy
execute store result score 3= srn.dummy run scoreboard players operation 2= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.6 int 1 run scoreboard players operation 2= srn.dummy %= #256 srn.dummy
execute store result storage srn:storage root.temp.7 int 1 run scoreboard players operation 3= srn.dummy /= #256 srn.dummy

execute store result score 0= srn.dummy store result score 1= srn.dummy run data get storage srn:storage root.temp.in[2]
execute store result storage srn:storage root.temp.8 int 1 run scoreboard players operation 0= srn.dummy %= #256 srn.dummy
execute store result score 2= srn.dummy run scoreboard players operation 1= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.9 int 1 run scoreboard players operation 1= srn.dummy %= #256 srn.dummy
execute store result score 3= srn.dummy run scoreboard players operation 2= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.a int 1 run scoreboard players operation 2= srn.dummy %= #256 srn.dummy
execute store result storage srn:storage root.temp.b int 1 run scoreboard players operation 3= srn.dummy /= #256 srn.dummy

execute store result score 0= srn.dummy store result score 1= srn.dummy run data get storage srn:storage root.temp.in[3]
execute store result storage srn:storage root.temp.c int 1 run scoreboard players operation 0= srn.dummy %= #256 srn.dummy
execute store result score 2= srn.dummy run scoreboard players operation 1= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.d int 1 run scoreboard players operation 1= srn.dummy %= #256 srn.dummy
execute store result score 3= srn.dummy run scoreboard players operation 2= srn.dummy /= #256 srn.dummy
execute store result storage srn:storage root.temp.e int 1 run scoreboard players operation 2= srn.dummy %= #256 srn.dummy
execute store result storage srn:storage root.temp.f int 1 run scoreboard players operation 3= srn.dummy /= #256 srn.dummy

function srn:technical/string_uuid/get_hexes with storage srn:storage root.temp
function srn:technical/string_uuid/concat_uuid with storage srn:storage root.temp

function srn:technical/string_uuid/get_name