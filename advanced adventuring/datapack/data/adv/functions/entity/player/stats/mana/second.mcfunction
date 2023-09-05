function adv:entity/player/get_equipment
function adv:entity/player/stats/mana/get
execute if entity @s[scores={adv.reload.magic=0}] unless score @s adv.s.current_mana = @s adv.s.max_mana run function adv:entity/player/stats/mana_regen/get
