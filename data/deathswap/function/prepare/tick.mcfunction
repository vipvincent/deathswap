#--------------------------------------------------
#Death Swap
#data/deathswap/function/prepare/tick.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#bossbar
function deathswap:ui/bossbar/wait_prepare

#actionbar
execute if score *language deathswap.setting matches 1 run function deathswap:ui/actionbar/en/prepare
execute if score *language deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/prepare

#effect
effect give @a night_vision infinite 255 true
effect give @a water_breathing infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a saturation infinite 255 true
effect give @a glowing infinite 255 true

#spawnpoint
execute at @e[tag=lobby] run spawnpoint @a ~ ~ ~

#death tp to lobby
execute as @a if score @s deathswap.death matches 1 run tp @s @e[tag=lobby,limit=1]

#creative
execute as @a[tag=admin,tag=!creative,gamemode=creative] run clear @s
execute as @a[tag=admin,tag=!creative,gamemode=creative] run tag @s add creative

execute as @a[tag=admin,tag=creative,gamemode=!creative] run clear @s
execute as @a[tag=admin,tag=creative,gamemode=!creative] run tag @s remove creative

#ui_page
function deathswap:ui/inventory/main
