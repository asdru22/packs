data merge storage smithed:log {message:'["",{"color":"green","text":"Merging"},"\\n------------"]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

# Store the enchantments into a temporary spot
data modify storage nihility:storage root.temp.merge.final set from storage smithed.crafter:input recipe[0].tag.nihility.StoredEnchantments
data modify storage nihility:storage root.temp.merge.temp set from storage smithed.crafter:input recipe[1].tag.nihility.StoredEnchantments

# iterate through all the enchants
execute store result score #tempLength nihility.data run data get storage nihility:storage root.temp.merge.temp
function nihility:recipes/merge/for_temp

# Result output
data merge storage smithed:log {message:'["",{"color":"gold","text":"Result"},"\\n",{"nbt":"root.temp.merge.final[].id","storage":"nihility:storage"}]',level:1,type:'INFO'}
function #smithed:core/pub/technical/tools/log

loot replace block ~ ~ ~ container.16 loot nihility:item/mystic_book