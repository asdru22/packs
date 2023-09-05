scoreboard players set @s asd.stat.health.current 0
item modify entity @s armor.head asd:mob_death
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
scoreboard players operation d.0 asd.d = @s asd.xp.current
data merge entity @s {CustomNameVisible:1b}
kill @s

execute as @a[tag=asd.tick_target] run function asd:player/events/actions/on_kill/main