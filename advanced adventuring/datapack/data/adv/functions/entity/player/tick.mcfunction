#Timers
function adv:gameplay/item/timers/main

#Item using
execute if entity @s[scores={adv.use_wofas=1..}] run function adv:item/wfoas
execute if entity @s[scores={adv.use_bow=1..}] run function adv:item/bow
execute if entity @s[scores={adv.use_crossbow=1..}] run function adv:item/crossbow
execute if entity @s[scores={adv.using_item=1..}] run function adv:item/usable/tick