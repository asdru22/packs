$execute as @a[scores={srn.id=$(owner)}] run function srn:technical/string_uuid/init
$data modify storage srn:storage root.temp.damage set value $(throwing_damage)