scoreboard players operation temp nihility.data = @s nihility.id
scoreboard players reset count nihility.data
execute as @e[type=#nihility:airship_parts,tag=nihility.airship,sort=nearest,limit=3,distance=..6] if score temp nihility.data = @s nihility.id run scoreboard players add count nihility.data 1
execute unless score count nihility.data matches 3 as @e[type=#nihility:airship_parts,tag=nihility.airship,sort=nearest,limit=3,distance=..6] if score temp nihility.data = @s nihility.id run function nihility:entity/airship/parts/destroy