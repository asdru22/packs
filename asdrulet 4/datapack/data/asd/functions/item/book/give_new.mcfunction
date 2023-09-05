execute store result score book asd.d run clear @s minecraft:written_book 0
execute if score book asd.d matches 1.. run clear @s written_book
execute if score book asd.d matches 1.. run loot give @s loot asd:item/book/test