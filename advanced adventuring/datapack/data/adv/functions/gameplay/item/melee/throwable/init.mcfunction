function adv:entity/player/get_equipment
scoreboard players operation $id adv.data = @s adv.id
execute if data storage adv:storage root.temp.equipment.Mainhand.tag.adv{id:"flail"} run function adv:gameplay/item/melee/flail/init
