tag @s add cbs.death_schedule
scoreboard players reset @s cbs.death
schedule function cbs:player/death/schedule 1t replace

title @p title {"text":"You Died!","color":"#ff0000"}