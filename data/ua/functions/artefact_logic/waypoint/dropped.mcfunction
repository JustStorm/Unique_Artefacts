execute as @e[type=minecraft:area_effect_cloud,tag=waypoint] at @s run forceload remove ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint] at @s run kill @s

summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:2147483647,Radius:0,Tags:["waypoint"]}
forceload add ~ ~
title @a[tag=waypoint_bound] actionbar {"text":"Точка телепортации установлена","color":"green"}

playsound minecraft:entity.ender_eye.death ambient @a[tag=waypoint_bound] ~ ~ ~ 1
kill @s