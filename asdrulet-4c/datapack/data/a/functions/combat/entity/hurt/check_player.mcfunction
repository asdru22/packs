scoreboard players reset $found var
execute on attacker if score $id var = @s id run scoreboard players set $found var 1
execute if score $found var matches 1 run function a:combat/entity/hurt/hit