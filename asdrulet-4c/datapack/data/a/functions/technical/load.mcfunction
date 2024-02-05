scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add id dummy

scoreboard objectives add current_slot dummy
scoreboard objectives add previous_slot dummy

scoreboard objectives add stat.health.current dummy
scoreboard objectives add stat.health.max dummy
scoreboard objectives add stat.health.regen dummy
scoreboard objectives add stat.health.old dummy

scoreboard objectives add stat.defense dummy

scoreboard objectives add stat.damage dummy

scoreboard objectives add stat.stamina.current dummy
scoreboard objectives add stat.stamina.max dummy
scoreboard objectives add stat.stamina.regen dummy
scoreboard objectives add stat.stamina.consumed dummy

scoreboard objectives add stat.cast_cooldown dummy
scoreboard objectives add stat.movement_speed dummy

scoreboard objectives add using_item.old dummy
scoreboard objectives add using_item.current dummy

scoreboard objectives add use.bow used:bow
scoreboard objectives add use.crossbow used:crossbow
scoreboard objectives add use.carrot_on_a_stick used:carrot_on_a_stick

scoreboard objectives add regeneration_cooldown dummy

execute in overworld run setblock 0 -64 0 minecraft:shulker_box{Items:[{id:"stone",Count:1}]}

function a:combat/stats/set_base
function a:technical/const
function a:technical/timers/second

data modify storage a:data root.element set value [{element:"vortex","color":"#74E3CD",weak:"stasis",strong:"chaos"},{element:"chaos","color":"#CC3D6D",weak:"vortex",strong:"rupture"},{element:"rupture","color":"#FFF67A",weak:"chaos",strong:"stasis"},{element:"stasis","color":"#644DFF",weak:"rupture",strong:"vortex"}]