data merge storage smithed:log {message:'["",{"color":"blue","text":"For Temp: "},{"nbt":"root.temp.merge.temp[-1].id","storage":"nihility:storage"}]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

scoreboard players set #wasFound nihility.data 0

# Try to find an existing enchantment with the same id
function nihility:recipes/merge/find
# If non is found append it to the output
execute if score #wasFound nihility.data matches 0 run function nihility:recipes/merge/for_temp/0

# Standard iterate from the back shit
data remove storage nihility:storage root.temp.merge.temp[-1]
scoreboard players remove #tempLength nihility.data 1
execute if score #tempLength nihility.data matches 1.. run function nihility:recipes/merge/for_temp