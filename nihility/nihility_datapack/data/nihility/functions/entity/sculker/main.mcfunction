scoreboard players set b nihility.data 0
execute if score b nihility.data matches 0 if entity @s[tag=nihility.entity.sculker.close] run function nihility:entity/sculker/opening
execute if score b nihility.data matches 0 if entity @s[tag=nihility.entity.sculker.open] run function nihility:entity/sculker/closing