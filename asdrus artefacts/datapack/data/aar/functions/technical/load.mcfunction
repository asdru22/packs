scoreboard objectives add aar.int dummy
scoreboard objectives add aar.int2 dummy

scoreboard objectives add aar.using_item dummy
scoreboard objectives add aar.using_item_new dummy
scoreboard objectives add aar.old_xp dummy

scoreboard objectives add aar.current_xp xp

scoreboard objectives add aar.used_crossbow used:crossbow
scoreboard objectives add aar.used_warped_fungus_on_a_stick used:warped_fungus_on_a_stick


scoreboard players set #2 aar.int 2
scoreboard players set #5 aar.int 5
scoreboard players set #10 aar.int 10

function aar:technical/1_second
function aar:technical/10_seconds

function aar:entity/natural_spawning/timer/timer