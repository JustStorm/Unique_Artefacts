execute store result score @s UUID0 run data get entity @s Owner[0]
execute store result score @s UUID1 run data get entity @s Owner[1]
execute store result score @s UUID2 run data get entity @s Owner[2]
execute store result score @s UUID3 run data get entity @s Owner[3]
execute as @s[tag=!not_exploded] if score @s UUID0 = explosive_bow UUID0 if score @s UUID1 = explosive_bow UUID1 if score @s UUID2 = explosive_bow UUID2 if score @s UUID3 = explosive_bow UUID3 run tag @s add explosive_arrow
