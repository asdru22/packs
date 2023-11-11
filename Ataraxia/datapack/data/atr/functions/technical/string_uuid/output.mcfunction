$data modify storage atr:storage root.temp.out set value $(Name)
$data modify storage atr:storage root.temp.name set value $(Name)

data modify storage atr:storage root.temp.name set from storage atr:storage root.temp.out.hoverEvent.contents.name.text
data modify storage atr:storage root.temp.out set from storage atr:storage root.temp.out.hoverEvent.contents.id