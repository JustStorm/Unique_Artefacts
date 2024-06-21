execute as @e[type=minecraft:interaction,tag=Smallforge] at @s unless block ~ ~ ~ minecraft:soul_lantern run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=ua_sacrifice_mark] at @s unless block ~ ~0.1 ~ minecraft:soul_lantern run kill @s
schedule function ua:garbage_collector 1s replace