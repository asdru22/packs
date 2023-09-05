## initiate
scoreboard players operation $id mach.data = @s mach.data
## find owner
execute as @a if score @s mach.data = $id mach.data run tag @s add me
tag @s add face_me

## execute as hit mobs
execute as @a[tag=me] at @s facing entity @e[type=marker,tag=face_me,limit=1,sort=nearest] feet run function mach:item/grappling_hook/as_player/land_events

kill @s