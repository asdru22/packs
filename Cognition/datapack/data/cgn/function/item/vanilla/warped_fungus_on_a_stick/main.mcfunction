execute if data storage cgn:storage root.temp.item.components{"minecraft:item_name":'{"translate":"item.cgn.midnight_rose_seed"}'} run return run function cgn:block/midnight_rose/plant/init

execute if data storage cgn:storage root.temp.item.components{"minecraft:item_name":'{"translate":"item.cgn.electromodulator"}'} run return run function cgn:item/electromodulator/init

execute if data storage cgn:storage root.temp.item.components{"minecraft:item_name":'{"translate":"item.cgn.emberlash"}',"minecraft:custom_data":{cgn:{charged:true}}} run return run function cgn:item/emberlash/click