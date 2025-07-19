execute if data storage cgn:storage root.temp{direction:"up"} run loot spawn ~ ~1.1 ~ loot cgn:items/malachite 
execute if data storage cgn:storage root.temp{direction:"down"} run loot spawn ~ ~-1.1 ~ loot cgn:items/malachite 
execute if data storage cgn:storage root.temp{direction:"north"} run loot spawn ~ ~ ~-1.1 loot cgn:items/malachite 
execute if data storage cgn:storage root.temp{direction:"south"} run loot spawn ~ ~ ~1.1 loot cgn:items/malachite 
execute if data storage cgn:storage root.temp{direction:"east"} run loot spawn ~1.1 ~ ~ loot cgn:items/malachite 
execute if data storage cgn:storage root.temp{direction:"west"} run loot spawn ~-1.1 ~ ~ loot cgn:items/malachite 