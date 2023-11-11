advancement revoke @s only atr:player_death

tag @s add atr.death_schedule
schedule function atr:player/death/schedule 1t replace

title @p title {"text":"You Died!","color":"#ff0000"}