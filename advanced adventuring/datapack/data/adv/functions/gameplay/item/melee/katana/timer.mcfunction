scoreboard players operation $cd.katana adv.data = #timer adv.data
scoreboard players operation $cd.katana adv.data %= 16 adv.data
execute if score $cd.katana adv.data matches 0 run scoreboard players remove @s adv.item.katana 1