function adv:entity/player/stats/health/get
scoreboard players operation @s adv.s.current_health = @s adv.s.max_health
tag @s remove adv.player.dead

attribute @s generic.armor base set -2000