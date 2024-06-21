tag @s remove waypoint_bound
tag @s remove hasBound
scoreboard players set waypoint unique_artefacts 0
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint] at @s run forceload remove ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint] at @s run kill @s