data modify storage asd:data root.temp.item set from storage asd:data root.temp.equipment.feet
function asd:item/custom/durability/init
execute if score dur asd.d matches 1.. run item modify entity @s armor.feet asd:display_durability
execute if score dur asd.d matches ..0 run item replace entity @s armor.feet with air