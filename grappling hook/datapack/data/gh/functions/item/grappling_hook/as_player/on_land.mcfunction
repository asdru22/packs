scoreboard players operation $id gh.data = @s gh.data
execute store result score $link gh.data run scoreboard players add @s gh.link 1
scoreboard players set $fail gh.data 1
tag @s add gh.me
execute as @e[type=armor_stand,tag=gh.link] if score @s gh.data = $id gh.data if score @s gh.link = $link gh.data at @s run function gh:item/grappling_hook/as_armor_stand/as_player
tag @s remove gh.me
execute if score $fail gh.data matches 1 run effect clear @s levitation
