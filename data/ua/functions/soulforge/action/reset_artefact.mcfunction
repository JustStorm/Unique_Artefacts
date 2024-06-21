execute as @e[type=item,distance=..1] run function ua:soulforge/kill_resource_reset
execute as @a[distance=..5,tag=soulforge_interaction] at @s run function ua:soulforge/reset_artefact/route
function ua:admin/update_bossbar_players
particle minecraft:smoke ~ ~.2 ~ 0.1 0.1 0.1 0.005 100