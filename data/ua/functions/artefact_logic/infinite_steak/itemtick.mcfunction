execute as @s[predicate=ua:is_artefact/infinite_steak] if data entity @s Thrower if entity @a[tag=infinite_steak_bound,predicate=ua:has_artefact/infinite_steak] at @s run function ua:artefact_logic/infinite_steak/cleardropped