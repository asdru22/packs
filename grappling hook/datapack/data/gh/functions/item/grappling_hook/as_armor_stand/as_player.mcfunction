scoreboard players reset $fail gh.data
tag @s add gh.face_me

execute if entity @a[tag=gh.me,distance=..2] run scoreboard players set $cut gh.data 1
execute as @a[tag=gh.me] at @s facing entity @e[type=armor_stand,tag=gh.face_me,sort=nearest,limit=1] eyes run function gh:item/grappling_hook/as_player/launch
kill @s
scoreboard players reset $cut gh.data