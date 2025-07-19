# Reset storage
data remove storage vrm:temp root.macro_input
# Set command
$data modify storage vrm:temp root.macro_input.command set value "$(command)"
# Get and remove last player
data modify storage vrm:temp root.macro_input.uuid set from storage vrm:temp root.players[-1]
data remove storage vrm:temp root.players[-1]
# Execute command
function vrm:balemoon/technical/execute_as_players/execute_command with storage vrm:temp root.macro_input
# Check for more players
$execute if data storage vrm:storage root.players[] run function vrm:balemoon/technical/execute_as_players/iterate {command:"$(command)"}