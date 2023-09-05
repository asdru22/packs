execute if entity @s[tag=smithed.block] run function mach:block/tick
execute if entity @s[type=snowball,tag=mach.grapple.hook] run function mach:item/grappling_hook/as_snowball/tick
execute if entity @s[type=marker,tag=mach.grapple.hook,predicate=!mach:entity/is_riding_snowball] run function mach:item/grappling_hook/as_marker/land