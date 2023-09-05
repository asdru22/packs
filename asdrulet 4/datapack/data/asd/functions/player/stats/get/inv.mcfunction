function asd:player/stats/get/get_items
execute if data storage asd:data root.temp.equipment.Accessories[].tag.base{Type:"accessory"} run function asd:item/accessory/main
function asd:player/stats/health/get
function asd:player/stats/defense/get
function asd:player/stats/max_electricity/get

advancement revoke @s only asd:technical/item/update_stats