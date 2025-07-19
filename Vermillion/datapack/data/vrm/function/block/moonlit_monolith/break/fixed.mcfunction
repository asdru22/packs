# Break a fixed moonlit monolith

execute on passengers run kill
function vrm:block/moonlit_monolith/break/main
$data remove storage vrm:storage root.balemoon[{moonlit_monolith:"$(string_uuid)"}]