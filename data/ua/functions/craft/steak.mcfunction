execute as @s store result score infinite_steak UUID0 run data get entity @s Thrower[0]
execute as @s store result score infinite_steak UUID1 run data get entity @s Thrower[1]
execute as @s store result score infinite_steak UUID2 run data get entity @s Thrower[2]
execute as @s store result score infinite_steak UUID3 run data get entity @s Thrower[3]
execute as @a if score @s UUID0 = infinite_steak UUID0 if score @s UUID1 = infinite_steak UUID1 if score @s UUID2 = infinite_steak UUID2 if score @s UUID3 = infinite_steak UUID3 unless entity @s[tag=hasBound] run tag @s add infinite_steak_bound
tellraw @a[tag=ua_debug] [{"text":"[UA_debug] ","color":"gold"},{"selector":"@a[tag=infinite_steak_bound]","color":"green"},{"text":" создал Артефакт Кулинарии (вечный стейк)!","color":"gold"}]
execute as @a[tag=infinite_steak_bound] run tag @s add hasBound
execute unless entity @a[tag=infinite_steak_bound] run return 0


summon lightning_bolt ~ ~-2 ~
fill ~-1 ~-2 ~-1 ~1 ~-1 ~1 air
particle minecraft:glow ~ ~-1.5 ~ 1 1 1 0.3 200
execute positioned ~ ~-2 ~ run function ua:artefact_logic/infinite_steak/getitem
playsound minecraft:ui.toast.challenge_complete ambient @a[distance=..15] ~ ~-2 ~ 1
scoreboard players set infinite_steak unique_artefacts 1
kill @s[nbt={Item:{tag:{Activator:1}}}]