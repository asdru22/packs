$execute if score @s cbs.stamina matches ..$(stamina) run title @s actionbar {"translate":"cbs.combo.no_stamina","color":"gray","with":[{"translate":"cbs.combo.$(combo)"}]}
$execute if score @s cbs.stamina matches $(stamina).. run function cbs:player/clicks/has_stamina {combo:$(combo),stamina:$(stamina),id:$(id)}

scoreboard players reset @s cbs.clicks
scoreboard players reset @s cbs.combo_timer