data remove storage cgn:macro root
$data modify storage cgn:macro root set value {slot:$(slot)}
$execute store result score $charge cgn.dummy run data get entity @s Inventory[{Slot:$(inventory)b}].components."minecraft:custom_data".cgn.charge
execute store result storage cgn:macro root.new int 1 run scoreboard players remove $charge cgn.dummy 1
function cgn:item/chargeable_armor/modify/main with storage cgn:macro root