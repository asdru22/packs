# Reset storage
data remove storage haywire:temp root.macro_input
# Set command
$data modify storage haywire:temp root.macro_input.command set value "$(command)"
# Get and remove last player
data modify storage haywire:temp root.macro_input.uuid set from storage haywire:temp root.players[-1]
data remove storage haywire:temp root.players[-1]
# Execute command
function haywire:balemoon/technical/execute_as_players/execute_command with storage haywire:temp root.macro_input
# Check for more players
$execute if data storage haywire:storage root.players[] run function haywire:balemoon/technical/execute_as_players/iterate {command:"$(command)"}