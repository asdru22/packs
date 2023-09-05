scoreboard players remove @s[scores={adv.reload.magic=1..}] adv.reload.magic 1
scoreboard players remove @s[scores={adv.reload.melee=1..}] adv.reload.melee 1
scoreboard players remove @s[scores={adv.reload.ranged=1..}] adv.reload.ranged 1

execute if entity @s[scores={adv.item.katana=1..}] run function adv:gameplay/item/melee/katana/timer
execute if entity @s[scores={adv.full_swing_check=1..}] run scoreboard players remove @s adv.full_swing_check 1