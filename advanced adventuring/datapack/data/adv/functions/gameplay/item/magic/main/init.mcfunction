function adv:entity/player/get_equipment
function adv:entity/player/stats/mana_cost/get

execute if score @s adv.s.current_mana >= $mana adv.data run function adv:gameplay/item/magic/main/cast