execute unless data storage mach:storage root.temp.clear.in[0].tag.smithed run function mach:block/pondering_table/clear/add
data remove storage mach:storage root.temp.clear.in[0]
execute if data storage mach:storage root.temp.clear.in[] run function mach:block/pondering_table/clear/get_count_iter