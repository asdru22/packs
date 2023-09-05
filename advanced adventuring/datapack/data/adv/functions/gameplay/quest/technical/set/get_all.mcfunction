#Store main
scoreboard players operation $m_id adv.data = @s adv.quest
scoreboard players operation $m_id adv.data %= 1000 adv.data

#Store side
scoreboard players operation $s_id adv.data = @s adv.quest
scoreboard players operation $s_id adv.data /= 1000 adv.data
scoreboard players operation $s_id adv.data %= 1000 adv.data
scoreboard players operation $s_id adv.data *= 1000 adv.data

#Store daily
scoreboard players operation $d_id adv.data = @s adv.quest
scoreboard players operation $d_id adv.data /= 1000000 adv.data
scoreboard players operation $d_id adv.data %= 1000 adv.data
scoreboard players operation $d_id adv.data *= 1000000 adv.data

scoreboard players set @s adv.quest 1000000000