data merge storage smithed:log {message:'["",{"color":"blue","text":"For Temp: "},{"nbt":"root.temp.merge.temp[-1].id","storage":"cotv:storage"}]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

scoreboard players set #wasFound cotv.dummy 0

# Try to find an existing enchantment with the same id
function cotv:recipes/merge/find
# If non is found append it to the output
execute if score #wasFound cotv.dummy matches 0 run function cotv:recipes/merge/for_temp/0

# Standard iterate from the back shit
data remove storage cotv:storage root.temp.merge.temp[-1]
scoreboard players remove #tempLength cotv.dummy 1
execute if score #tempLength cotv.dummy matches 1.. run function cotv:recipes/merge/for_temp