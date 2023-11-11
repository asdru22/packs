ride @s mount @e[type=#atr:affected,tag=atr.affected,tag=atr.setup,limit=1,distance=..1]
data merge entity @s {billboard:"center",default_background:0b,see_through:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1f,1f,1f]}}
function atr:display/mob_name with storage atr:storage root.temp.mob