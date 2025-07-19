fillbiome ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:plains

function haywire:technical/string_uuid/init
data remove storage haywire:temp root.macro_input
data modify storage haywire:temp root.macro_input.string_uuid set from storage haywire:temp root.string_uuid
function haywire:block/moonlit_monolith/ten_second_clock/day/reset_storage with storage haywire:temp root.macro_input