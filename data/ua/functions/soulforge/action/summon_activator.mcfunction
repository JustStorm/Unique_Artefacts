execute as @e[type=item,distance=..1] run function ua:soulforge/kill_resource_activator
summon item ~ ~ ~ {Item:{id:"heart_of_the_sea",Count:1b,tag:{Activator:1,display:{Name:'[{"text":"Катализатор","italic":false,"color":"gold","bold":true}]',Lore:['[{"text":"Вы чувствуете, как из него исходит энергия","italic":false}]']}}}}
particle minecraft:smoke ~ ~.2 ~ 0.1 0.1 0.1 0.005 100