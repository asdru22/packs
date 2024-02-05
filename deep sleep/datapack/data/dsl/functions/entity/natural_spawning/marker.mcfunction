scoreboard players add #custom_mob_cap dsl.dummy 1
$spreadplayers ~ ~ $(distance) $(range) under $(y) false @s
$execute at @s run function dsl:commands/summon/$(id)
kill @s