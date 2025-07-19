# Summons a peeper

summon minecraft:wandering_trader ~ ~ ~ {Team:"smithed.prevent_aggression",CustomName:'{"translate":"entity.cgn.peeper"}',attributes:[{base:40.0d,id:"minecraft:max_health"}],Health:40.0f,Team:"smithed.prevent_aggression",DeathLootTable:"cgn:entities/peeper",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["cgn.tick","cgn.second","cgn.peeper","cgn.hostile","cgn.trader_entity","smithed.entity"],ArmorItems:[{},{},{},\
{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_data":{cgn:{custom_model_data:{head:1,idle:3,moving:5,attacking:5,head_attacking:7}}},"minecraft:custom_model_data":1,"item_model":"cgn:entity/root"}}],\
HandItems:[{id:"minecraft:structure_block",count:1,components:{"minecraft:custom_model_data":3,"item_model":"cgn:entity/root"}},{}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.cgn.peeper"}]}
