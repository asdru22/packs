data modify storage atr:storage root.temp.attack.killing_blow set value true
execute if entity @s[type=!player] run function atr:events/mob/hurt_by_player/mob_death

execute on passengers run kill @s[type=text_display]
kill @s
