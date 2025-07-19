fillbiome ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:plains

function vrm:technical/string_uuid/init
data remove storage vrm:temp root.macro_input
data modify storage vrm:temp root.macro_input.string_uuid set from storage vrm:temp root.string_uuid
function vrm:block/moonlit_monolith/ten_second_clock/day/reset_storage with storage vrm:temp root.macro_input