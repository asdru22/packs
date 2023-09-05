scoreboard objectives add asd.d dummy
scoreboard objectives add asd.t trigger
#levelling scores
scoreboard objectives add asd.xp.level dummy
scoreboard objectives add asd.xp.current dummy
scoreboard objectives add asd.xp.max dummy
#electricity scores
scoreboard objectives add asd.x dummy
scoreboard objectives add asd.y dummy
scoreboard objectives add asd.billboard_flip trigger
scoreboard objectives add asd.progress dummy
scoreboard objectives add asd.temp_health dummy
#
scoreboard objectives add asd.stat.electricity.current dummy
scoreboard objectives add asd.stat.electricity.max dummy

##stats
scoreboard objectives add asd.stat.damage.base dummy
scoreboard objectives add asd.stat.crit_damage.base dummy
scoreboard objectives add asd.stat.crit_chance.base dummy
scoreboard objectives add asd.stat.defense.base dummy
scoreboard objectives add asd.stat.defense.current dummy
scoreboard objectives add asd.stat.electricity.base dummy
scoreboard objectives add asd.stat.health.base dummy
scoreboard objectives add asd.stat.health.current dummy
scoreboard objectives add asd.stat.health.max dummy
scoreboard objectives add asd.regen.delay dummy

## use items
scoreboard objectives add asd.use_bow minecraft.used:minecraft.bow
scoreboard objectives add asd.use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add asd.use_trident minecraft.used:minecraft.trident
scoreboard objectives add asd.use_nether_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add asd.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add asd.use_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add asd.using_item dummy
scoreboard objectives add asd.prev_using_item dummy
## other
scoreboard objectives add asd.using_slot dummy
scoreboard objectives add asd.previous_using_slot dummy
scoreboard objectives add asd.block_break_progress dummy

## clocks
scoreboard objectives add asd.timer dummy
scoreboard objectives add asd.gui dummy
scoreboard objectives add asd.prev_gui dummy
scoreboard objectives add asd.ability_cooldown dummy

## effects
scoreboard objectives add asd.effect.electrified dummy
scoreboard objectives add asd.effect.absorption dummy
##
scoreboard objectives add asd.player_join minecraft.custom:minecraft.leave_game
scoreboard objectives add asd.recipe trigger
#entity matching scores
scoreboard objectives add asd.id dummy
scoreboard objectives add asd.mob_id dummy
scoreboard objectives add asd.id.0 dummy
scoreboard objectives add asd.id.1 dummy
scoreboard objectives add asd.id.2 dummy
scoreboard objectives add asd.id.3 dummy
scoreboard objectives add asd.id.4 dummy
scoreboard objectives add asd.id.5 dummy
scoreboard objectives add asd.id.6 dummy
scoreboard objectives add asd.id.7 dummy
scoreboard objectives add asd.id.8 dummy
scoreboard objectives add asd.id.9 dummy
scoreboard objectives add asd.id.10 dummy
scoreboard objectives add asd.id.11 dummy
scoreboard objectives add asd.id.12 dummy
scoreboard objectives add asd.id.13 dummy
scoreboard objectives add asd.id.14 dummy
scoreboard objectives add asd.id.15 dummy
scoreboard objectives add asd.id.16 dummy
scoreboard objectives add asd.id.17 dummy
scoreboard objectives add asd.id.18 dummy
scoreboard objectives add asd.id.19 dummy
scoreboard objectives add asd.id.20 dummy
scoreboard objectives add asd.id.21 dummy
scoreboard objectives add asd.id.22 dummy
scoreboard objectives add asd.id.23 dummy
scoreboard objectives add asd.id.24 dummy
scoreboard objectives add asd.id.25 dummy
scoreboard objectives add asd.id.26 dummy
scoreboard objectives add asd.id.27 dummy
scoreboard objectives add asd.id.28 dummy
scoreboard objectives add asd.id.29 dummy
scoreboard objectives add asd.id.30 dummy
scoreboard objectives add asd.id.31 dummy

kill @e[type=marker,tag=asd.trig]
execute in overworld run summon marker 0.0 0 0.0 {Tags:["asd.trig"]}
setblock 0 1 0 barrel{Items:[{Slot:0b,Count:1b,id:"minecraft:stone"}]} destroy
setblock 0 0 0 oak_sign
function asd:technical/set_constants
function asd:technical/timers/10ticks
function asd:technical/timers/1second
function asd:technical/timers/2seconds
function asd:technical/timers/10seconds
tellraw @a {"text":"- Reload Complete","color":"yellow"}

team add asd.players
team modify asd.players collisionRule never
team modify asd.players friendlyFire false
team modify asd.players seeFriendlyInvisibles true

execute as @a run function asd:item/book/give_new
scoreboard objectives setdisplay list asd.xp.level