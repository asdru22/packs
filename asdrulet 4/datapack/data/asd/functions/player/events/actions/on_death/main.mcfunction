kill @s

title @s title "YOU DIED!"
scoreboard players operation @s asd.stat.health.current = @s asd.stat.health.base
function asd:player/displays/healthbar