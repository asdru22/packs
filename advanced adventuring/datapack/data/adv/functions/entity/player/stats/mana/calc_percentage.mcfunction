execute if score @s adv.s.current_mana > @s adv.s.max_mana run scoreboard players operation @s adv.s.current_mana = @s adv.s.max_mana

scoreboard players operation $mana% adv.data = @s adv.s.current_mana
scoreboard players operation $mana% adv.data *= 100 adv.data 
scoreboard players operation $mana% adv.data /= @s adv.s.max_mana