tag @s remove dsl.player.sleeping
execute store result score $gametime dsl.dummy run time query daytime
execute unless score $gametime dsl.dummy matches 12542..23459 if entity @s[tag=dsl.player.drink_third_eye_potion] run function dsl:entity/player/third_eye/open