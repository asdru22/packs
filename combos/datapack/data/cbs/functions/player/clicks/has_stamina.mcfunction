$function cbs:items/$(id)/$(combo)/init
$title @s actionbar {"translate":"cbs.combo","with":[{"translate":"cbs.combo.$(combo)","color":"yellow"},{"nbt":"root.temp.clicks[]","storage":"cbs:storage","interpret":"true","separator":"","color":"green"},{"text":"-$(stamina)","color":"white"},{"translate":"cbs.font.stamina","font":"cbs:main","color":"white"}]}
$scoreboard players remove @s cbs.stamina $(stamina)
# temp sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
function cbs:player/stamina/update