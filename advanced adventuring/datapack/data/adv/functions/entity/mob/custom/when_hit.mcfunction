effect clear @s resistance
execute if data storage adv:storage root.temp.attack{type:"melee"} run function adv:entity/mob/defense/melee/blunt
execute if data storage adv:storage root.temp.attack{type:"magic"} run function adv:entity/mob/defense/magic/blunt
execute if data storage adv:storage root.temp.attack{type:"ranged"} run function adv:entity/mob/defense/ranged/blunt
execute store result score @s smithed.damage run scoreboard players operation $damage adv.data /= 10 adv.data
function #smithed.damage:entity/apply
effect give @s resistance infinite 50 true