item replace entity @a[advancements={nihility:technical/block/interact/magnetic_forge=true}] weapon.mainhand with air
scoreboard players set run nihility.data 0
execute if score run nihility.data matches 0 positioned ~ ~0.5 ~ unless entity @e[type=item,tag=nihility.item_offer,distance=..1] run function nihility:block/magnetic_forge/interaction/item
execute if score run nihility.data matches 0 positioned ~ ~0.5 ~ as @e[type=item,tag=nihility.item_offer,distance=..1] run function nihility:block/magnetic_forge/interaction/swap