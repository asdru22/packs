execute as @n[type=item_display,tag=vrm.moonlit_monolith.balemoon] run function vrm:technical/string_uuid/init
data remove storage vrm:temp root.macro_input
data modify storage vrm:temp root.macro_input.command set value "loot spawn ~ ~ ~ loot vrm:items/scarlet_key"
data modify storage vrm:temp root.macro_input.string_uuid set from storage vrm:temp root.string_uuid 
function vrm:balemoon/technical/execute_as_players/init with storage vrm:temp root.macro_input