execute as @s[predicate=ua:is_artefact/infinite_steak       ] if entity @a[distance=..2,tag=!infinite_steak_bound       ] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/absolute_shield      ] if entity @a[distance=..2,tag=!absolute_shield_bound      ] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/explosive_bow        ] if entity @a[distance=..2,tag=!explosive_bow_bound        ] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/allseeing_eye        ] if entity @a[distance=..2,tag=!allseeing_eye_bound        ] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/knockback_stick      ] if entity @a[distance=..2,tag=!knockback_stick_bound      ] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/resistance_chestplate] if entity @a[distance=..2,tag=!resistance_chestplate_bound] run data merge entity @s {PickupDelay:10s}
execute as @s[predicate=ua:is_artefact/waypoint             ] if entity @a[distance=..2,tag=!waypoint_bound             ] run data merge entity @s {PickupDelay:10s}