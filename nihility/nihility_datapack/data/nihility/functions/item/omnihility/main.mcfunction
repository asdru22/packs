scoreboard players operation temp nihility.data = @s nihility.trigger
scoreboard players reset @s nihility.trigger
scoreboard players enable @s nihility.trigger
execute if score temp nihility.data matches -9..-1 if score temp nihility.data >= @s nihility.books if entity @s[nbt={SelectedItem:{tag:{nihility:{book:1b}}}}] run function nihility:item/omnihility/give
execute if score temp nihility.data matches 1 run function nihility:item/omnihility/give_omnihility