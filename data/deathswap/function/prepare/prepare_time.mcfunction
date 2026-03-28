#prepare/prepare_time

#bossbar
function deathswap:prepare/bossbar

#effect
effect give @a night_vision infinite 255 true
effect give @a water_breathing infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a instant_health infinite 31 true
effect give @a saturation infinite 255 true
effect give @a glowing infinite 255 true

#spawnpoint
execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~

#death to lobby
execute as @a if score @s deathswap.death matches 1 run tp @s @e[tag=lobby,limit=1]

#creative
execute as @a[tag=admin,tag=!creative,gamemode=creative] run function deathswap:prepare/changeto_creative
execute as @a[tag=admin,tag=creative,gamemode=!creative] run function deathswap:prepare/changeto_survival

#ui_page
function #deathswap:ui/page/click
scoreboard players reset @a deathswap.carrot_right_click
