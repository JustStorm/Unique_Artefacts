execute if score arrow_explode_cooldown unique_artefacts < arrow_explode unique_artefacts_settings run scoreboard players add arrow_explode_cooldown unique_artefacts 1
execute store result bossbar minecraft:arrow_cd value run scoreboard players get arrow_explode_cooldown unique_artefacts


# Compare nearest arrow owner's UUID with the UUID of explosive bow owner. If its the same, mark arrow with explosive_arrow tag
execute as @a[tag=explosive_bow_bound,predicate=ua:artefact_logic/explosive_bow/is_holding] at @s as @e[type=arrow,distance=..2] run function ua:artefact_logic/explosive_bow/mark_explosive_arrow
# Explode upon impact
execute as @e[type=arrow,tag=explosive_arrow,predicate=ua:artefact_logic/explosive_bow/arrow_impact] at @s run function ua:artefact_logic/explosive_bow/explode