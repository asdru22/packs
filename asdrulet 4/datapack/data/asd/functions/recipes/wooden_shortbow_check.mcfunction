execute store result score d.0 asd.d run clear @s #asd:items{base:{ID:"log"}} 0
execute store result score d.1 asd.d run clear @s #asd:items{base:{ID:"string"}} 0
execute if score d.0 asd.d matches 2.. if score d.1 asd.d matches 3.. run function asd:recipes/wooden_shortbow_craft