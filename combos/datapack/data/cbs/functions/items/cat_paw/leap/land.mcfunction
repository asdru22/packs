scoreboard players reset @s cbs.combo.leap
tag @s remove cbs.combo_effect
tag @s add cbs.me
execute as @e[type=#cbs:target,tag=!cbs.me,distance=..5,nbt={OnGround:1b}] run function cbs:player/apply_damage/init {amount:50,by:"@p[tag=cbs.me]"}
tag @a remove cbs.me
particle crit ~ ~.1 ~ 1 0.1 1 0.01 20