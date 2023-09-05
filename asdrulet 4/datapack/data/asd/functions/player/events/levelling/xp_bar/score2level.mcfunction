xp set @s 0 levels
scoreboard players operation in asd.d = @s asd.xp.level
execute if score in asd.d matches 512.. run xp add @s 512 levels
execute if score in asd.d matches 512.. run scoreboard players remove in asd.d 512
execute if score in asd.d matches 256.. run xp add @s 256 levels
execute if score in asd.d matches 256.. run scoreboard players remove in asd.d 256
execute if score in asd.d matches 128.. run xp add @s 128 levels
execute if score in asd.d matches 128.. run scoreboard players remove in asd.d 128
execute if score in asd.d matches 64.. run xp add @s 64 levels
execute if score in asd.d matches 64.. run scoreboard players remove in asd.d 64
execute if score in asd.d matches 32.. run xp add @s 32 levels
execute if score in asd.d matches 32.. run scoreboard players remove in asd.d 32
execute if score in asd.d matches 16.. run xp add @s 16 levels
execute if score in asd.d matches 16.. run scoreboard players remove in asd.d 16
execute if score in asd.d matches 8.. run xp add @s 8 levels
execute if score in asd.d matches 8.. run scoreboard players remove in asd.d 8
execute if score in asd.d matches 4.. run xp add @s 4 levels
execute if score in asd.d matches 4.. run scoreboard players remove in asd.d 4
execute if score in asd.d matches 2.. run xp add @s 2 levels
execute if score in asd.d matches 2.. run scoreboard players remove in asd.d 2
execute if score in asd.d matches 1.. run xp add @s 1 levels
execute if score in asd.d matches 1.. run scoreboard players remove in asd.d 1
stopsound @s * minecraft:entity.player.levelup