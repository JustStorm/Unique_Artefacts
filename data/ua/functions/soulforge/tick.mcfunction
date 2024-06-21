execute positioned ~ ~-5 ~-3 as @e[type=minecraft:tnt_minecart,distance=..13] run kill @s
execute positioned ~ ~-5 ~-3 as @a[distance=..12,gamemode=survival] run function ua:soulforge/on_enter
execute positioned ~ ~-5 ~-3 as @a[distance=13..,gamemode=adventure,tag=inSoulforge] run function ua:soulforge/on_exit
execute if data entity @s interaction run function ua:soulforge/on_click