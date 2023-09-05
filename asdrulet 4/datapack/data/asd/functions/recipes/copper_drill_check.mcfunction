execute store result score d.0 asd.d run clear @s #asd:items{base:{ID:"spinach_nugget"}} 0
execute store result score d.1 asd.d run clear @s #asd:items{base:{ID:"claw"}} 0
execute if score d.0 asd.d matches 3.. if score d.1 asd.d matches 4.. run function asd:recipes/copper_drill_craft