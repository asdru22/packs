scoreboard objectives add adv.data dummy
scoreboard objectives add adv.quest dummy
scoreboard objectives add adv.id dummy

# combat aux
scoreboard objectives add adv.s.lifetime dummy
scoreboard objectives add adv.s.current_mana dummy
scoreboard objectives add adv.s.max_mana dummy
scoreboard objectives add adv.damage_dealt_resisted minecraft.custom:minecraft.damage_dealt_resisted

#Wand and Sword detection
scoreboard objectives add adv.use_wofas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add adv.use_bow minecraft.used:minecraft.bow
scoreboard objectives add adv.use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add adv.full_swing_check dummy
scoreboard objectives add adv.using_item dummy
scoreboard objectives add adv.prev_using_item dummy

# Special item
scoreboard objectives add adv.item.katana dummy

#Reload
scoreboard objectives add adv.reload.melee dummy
scoreboard objectives add adv.reload.ranged dummy
scoreboard objectives add adv.reload.magic dummy

# consts
scoreboard players set $visfix adv.data -1
scoreboard players set -1 adv.data -1
scoreboard players set 2 adv.data 2
scoreboard players set 4 adv.data 4
scoreboard players set 5 adv.data 5
scoreboard players set 10 adv.data 10
scoreboard players set 20 adv.data 20
scoreboard players set 25 adv.data 25
scoreboard players set 100 adv.data 100
scoreboard players set 125 adv.data 125
scoreboard players set 150 adv.data 150
scoreboard players set 250 adv.data 250
scoreboard players set 1000 adv.data 1000
scoreboard players set 10000 adv.data 10000
scoreboard players set 1000000 adv.data 1000000
function adv:technical/second

execute positioned 3000000 0 0 run forceload add ~ ~
setblock 3000000 0 0 barrel{Items:[{id:"minecraft:stone",Count:1b}]} destroy
setblock 3000000 1 0 oak_sign destroy

tellraw @a [{"text":"LOADED","color":"#653AA0"}]