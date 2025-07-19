execute as @n[type=item_display,tag=haywire.moonlit_monolith.balemoon] run function haywire:technical/string_uuid/init
data remove storage haywire:temp root.macro_input
data modify storage haywire:temp root.macro_input.command set value "loot spawn ~ ~ ~ loot haywire:items/scarlet_key"
data modify storage haywire:temp root.macro_input.string_uuid set from storage haywire:temp root.string_uuid 
function haywire:balemoon/technical/execute_as_players/init with storage haywire:temp root.macro_input