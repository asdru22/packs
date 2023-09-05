function adv:gameplay/quest/technical/set/get_all

scoreboard players operation @s adv.quest += $m_id adv.data
scoreboard players operation $questid adv.data *= 1000 adv.data
scoreboard players operation @s adv.quest += $questid adv.data
scoreboard players operation @s adv.quest += $d_id adv.data