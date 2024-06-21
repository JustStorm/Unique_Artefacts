execute if score arrow_explode_cooldown unique_artefacts < arrow_explode unique_artefacts_settings run tag @s add not_exploded
execute if score arrow_explode_cooldown unique_artefacts < arrow_explode unique_artefacts_settings run tag @s remove explosive_arrow
execute if score arrow_explode_cooldown unique_artefacts < arrow_explode unique_artefacts_settings run return 0
scoreboard players set arrow_explode_cooldown unique_artefacts 0
summon minecraft:tnt ~ ~ ~ {Fuse:0}
kill @s[type=arrow]