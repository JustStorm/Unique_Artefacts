execute as @s[predicate=ua:is_artefact/waypoint] if data entity @s Thrower if entity @a[tag=waypoint_bound,predicate=ua:has_artefact/waypoint] at @s run function ua:artefact_logic/waypoint/dropped