scoreboard players set $trade cotv.id 0
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit0=true}}] run scoreboard players add $trade cotv.id 1
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit1=true}}] run scoreboard players add $trade cotv.id 2
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit2=true}}] run scoreboard players add $trade cotv.id 4
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit3=true}}] run scoreboard players add $trade cotv.id 8
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit4=true}}] run scoreboard players add $trade cotv.id 16
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit5=true}}] run scoreboard players add $trade cotv.id 32
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit6=true}}] run scoreboard players add $trade cotv.id 64
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit7=true}}] run scoreboard players add $trade cotv.id 128
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit8=true}}] run scoreboard players add $trade cotv.id 256
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit9=true}}] run scoreboard players add $trade cotv.id 512
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit10=true}}] run scoreboard players add $trade cotv.id 1024
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit11=true}}] run scoreboard players add $trade cotv.id 2048
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit12=true}}] run scoreboard players add $trade cotv.id 4096
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit13=true}}] run scoreboard players add $trade cotv.id 8192
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit14=true}}] run scoreboard players add $trade cotv.id 16384
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit15=true}}] run scoreboard players add $trade cotv.id 32768
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit16=true}}] run scoreboard players add $trade cotv.id 65536
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit17=true}}] run scoreboard players add $trade cotv.id 131072
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit18=true}}] run scoreboard players add $trade cotv.id 262144
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit19=true}}] run scoreboard players add $trade cotv.id 524288
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit20=true}}] run scoreboard players add $trade cotv.id 1048576
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit21=true}}] run scoreboard players add $trade cotv.id 2097152
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit22=true}}] run scoreboard players add $trade cotv.id 4194304
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit23=true}}] run scoreboard players add $trade cotv.id 8388608
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit24=true}}] run scoreboard players add $trade cotv.id 16777216
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit25=true}}] run scoreboard players add $trade cotv.id 33554432
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit26=true}}] run scoreboard players add $trade cotv.id 67108864
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit27=true}}] run scoreboard players add $trade cotv.id 134217728
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit28=true}}] run scoreboard players add $trade cotv.id 268435456
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit29=true}}] run scoreboard players add $trade cotv.id 536870912
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit30=true}}] run scoreboard players add $trade cotv.id 1073741824
execute if entity @s[advancements={cotv:technical/player/interact_with_villager={bit31=true}}] run scoreboard players operation $trade cotv.id *= const.-1 cotv.dummy
scoreboard players operation d.2 cotv.dummy = @s cotv.id
data remove storage cotv:storage root.core.player_trade
data modify storage cotv:storage root.core.player_trade.Inventory set from entity @s Inventory
data modify storage cotv:storage root.core.player_trade.SelectedItem set from entity @s SelectedItem
execute as @e[type=#cotv:mobs,tag=cotv.mob.setup] if score @s cotv.mob_id = $trade cotv.id run function cotv:entity/mob/trader/traded_with
advancement revoke @s only cotv:technical/player/interact_with_villager