scoreboard players set @s dsl.third_eye_duration 720

playsound dsl:item.third_eye_potion.drink player @a[distance=..16] ~ ~ ~ 2 0.5

tag @s remove dsl.player.drink_third_eye_potion
advancement grant @s only dsl:dsl/third_eye_potion