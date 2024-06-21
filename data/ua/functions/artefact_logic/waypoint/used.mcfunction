kill @s[type=ender_pearl]
execute if score waypoint_cooldown unique_artefacts < waypoint unique_artefacts_settings run return 0
scoreboard players set waypoint_cooldown unique_artefacts 0
playsound minecraft:entity.enderman.teleport ambient @a[distance=..7] ~ ~ ~ 1
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..7] ~ ~ ~ 1
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint,limit=1] at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air run title @a[tag=waypoint_bound] actionbar {"text":"Экстренная отмена телепортации, локация недоступна","color":"red"}
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint,limit=1] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run teleport @a[tag=waypoint_bound] ~ ~1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=waypoint,limit=1] at @s if block ~ ~ ~ air run teleport @a[tag=waypoint_bound] ~ ~ ~