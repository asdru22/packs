tag @s remove mach.use_adv
scoreboard players operation $id mach.data = @s mach.data
execute as @e[type=marker,tag=mach.hook_pos] if score @s mach.data = $id mach.data run kill @s

stopsound @s player mach:item.grapple.use
playsound mach:item.grapple.return player @s ~ ~ ~ 100 1.6