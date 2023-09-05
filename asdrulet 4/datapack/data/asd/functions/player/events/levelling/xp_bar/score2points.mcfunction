xp set @s 0 points
xp set @s 129 levels
execute if score in asd.d matches 512.. run xp add @s 512 points
execute if score in asd.d matches 512.. run scoreboard players remove in asd.d 512
execute if score in asd.d matches 256.. run xp add @s 256 points
execute if score in asd.d matches 256.. run scoreboard players remove in asd.d 256
execute if score in asd.d matches 128.. run xp add @s 128 points
execute if score in asd.d matches 128.. run scoreboard players remove in asd.d 128
execute if score in asd.d matches 64.. run xp add @s 64 points
execute if score in asd.d matches 64.. run scoreboard players remove in asd.d 64
execute if score in asd.d matches 32.. run xp add @s 32 points
execute if score in asd.d matches 32.. run scoreboard players remove in asd.d 32
execute if score in asd.d matches 16.. run xp add @s 16 points
execute if score in asd.d matches 16.. run scoreboard players remove in asd.d 16
execute if score in asd.d matches 8.. run xp add @s 8 points
execute if score in asd.d matches 8.. run scoreboard players remove in asd.d 8
execute if score in asd.d matches 4.. run xp add @s 4 points
execute if score in asd.d matches 4.. run scoreboard players remove in asd.d 4
execute if score in asd.d matches 2.. run xp add @s 2 points
execute if score in asd.d matches 2.. run scoreboard players remove in asd.d 2
execute if score in asd.d matches 1.. run xp add @s 1 points
execute if score in asd.d matches 1.. run scoreboard players remove in asd.d 1
function asd:player/events/levelling/xp_bar/score2level