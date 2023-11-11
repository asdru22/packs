$scoreboard players operation @s atr.id = $(old_name) atr.id
$scoreboard players operation @s atr.stat.base_damage = $(old_name) atr.stat.base_damage
$scoreboard players operation @s atr.xp.current = $(old_name) atr.xp.current
$scoreboard players operation @s atr.xp.max = $(old_name) atr.xp.max
$scoreboard players operation @s atr.xp.level = $(old_name) atr.xp.level
$scoreboard players operation @s atr.stat.current_mana = $(old_name) atr.stat.current_mana
$scoreboard players operation @s atr.stat.max_mana = $(old_name) atr.stat.max_mana


$scoreboard players reset $(old_name) *

function atr:player/death/respawn