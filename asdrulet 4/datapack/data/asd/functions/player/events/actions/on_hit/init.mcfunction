scoreboard players set $hit asd.id 0
execute if entity @s[advancements={asd:technical/player/on_hit={bit0=true}}] run scoreboard players add $hit asd.id 1
execute if entity @s[advancements={asd:technical/player/on_hit={bit1=true}}] run scoreboard players add $hit asd.id 2
execute if entity @s[advancements={asd:technical/player/on_hit={bit2=true}}] run scoreboard players add $hit asd.id 4
execute if entity @s[advancements={asd:technical/player/on_hit={bit3=true}}] run scoreboard players add $hit asd.id 8
execute if entity @s[advancements={asd:technical/player/on_hit={bit4=true}}] run scoreboard players add $hit asd.id 16
execute if entity @s[advancements={asd:technical/player/on_hit={bit5=true}}] run scoreboard players add $hit asd.id 32
execute if entity @s[advancements={asd:technical/player/on_hit={bit6=true}}] run scoreboard players add $hit asd.id 64
execute if entity @s[advancements={asd:technical/player/on_hit={bit7=true}}] run scoreboard players add $hit asd.id 128
execute if entity @s[advancements={asd:technical/player/on_hit={bit8=true}}] run scoreboard players add $hit asd.id 256
execute if entity @s[advancements={asd:technical/player/on_hit={bit9=true}}] run scoreboard players add $hit asd.id 512
execute if entity @s[advancements={asd:technical/player/on_hit={bit10=true}}] run scoreboard players add $hit asd.id 1024
execute if entity @s[advancements={asd:technical/player/on_hit={bit11=true}}] run scoreboard players add $hit asd.id 2048
execute if entity @s[advancements={asd:technical/player/on_hit={bit12=true}}] run scoreboard players add $hit asd.id 4096
execute if entity @s[advancements={asd:technical/player/on_hit={bit13=true}}] run scoreboard players add $hit asd.id 8192
execute if entity @s[advancements={asd:technical/player/on_hit={bit14=true}}] run scoreboard players add $hit asd.id 16384
execute if entity @s[advancements={asd:technical/player/on_hit={bit15=true}}] run scoreboard players add $hit asd.id 32768
execute if entity @s[advancements={asd:technical/player/on_hit={bit16=true}}] run scoreboard players add $hit asd.id 65536
execute if entity @s[advancements={asd:technical/player/on_hit={bit17=true}}] run scoreboard players add $hit asd.id 131072
execute if entity @s[advancements={asd:technical/player/on_hit={bit18=true}}] run scoreboard players add $hit asd.id 262144
execute if entity @s[advancements={asd:technical/player/on_hit={bit19=true}}] run scoreboard players add $hit asd.id 524288
execute if entity @s[advancements={asd:technical/player/on_hit={bit20=true}}] run scoreboard players add $hit asd.id 1048576
execute if entity @s[advancements={asd:technical/player/on_hit={bit21=true}}] run scoreboard players add $hit asd.id 2097152
execute if entity @s[advancements={asd:technical/player/on_hit={bit22=true}}] run scoreboard players add $hit asd.id 4194304
execute if entity @s[advancements={asd:technical/player/on_hit={bit23=true}}] run scoreboard players add $hit asd.id 8388608
execute if entity @s[advancements={asd:technical/player/on_hit={bit24=true}}] run scoreboard players add $hit asd.id 16777216
execute if entity @s[advancements={asd:technical/player/on_hit={bit25=true}}] run scoreboard players add $hit asd.id 33554432
execute if entity @s[advancements={asd:technical/player/on_hit={bit26=true}}] run scoreboard players add $hit asd.id 67108864
execute if entity @s[advancements={asd:technical/player/on_hit={bit27=true}}] run scoreboard players add $hit asd.id 134217728
execute if entity @s[advancements={asd:technical/player/on_hit={bit28=true}}] run scoreboard players add $hit asd.id 268435456
execute if entity @s[advancements={asd:technical/player/on_hit={bit29=true}}] run scoreboard players add $hit asd.id 536870912
execute if entity @s[advancements={asd:technical/player/on_hit={bit30=true}}] run scoreboard players add $hit asd.id 1073741824
execute if entity @s[advancements={asd:technical/player/on_hit={bit31=true}}] run scoreboard players operation $hit asd.id *= const.-1 asd.d
function asd:player/events/actions/on_hit/real_damage
## find mob
tag @s add asd.tick_target
execute as @e[type=#asd:all,nbt={HurtTime:10s},tag=!asd.tick_target] if score @s asd.mob_id = $hit asd.id at @s run function asd:player/events/actions/on_hit/player_check
advancement revoke @s only asd:technical/player/on_hit
tag @s remove asd.tick_target