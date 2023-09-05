scoreboard players add #custom_mob_cap aar.int 1
$spreadplayers ~ ~ $(distance) $(range) under $(y) false @s
$execute at @s run function aar:commands/summon/$(id)
kill @s