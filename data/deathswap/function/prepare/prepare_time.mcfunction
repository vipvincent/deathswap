#bossbar
execute if score language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text": "§eYou are waiting for play §6Death Swap"}
execute if score language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text": "§e你正在等待遊玩§6死亡交換"}

#effect
effect give @a night_vision infinite 255 true
effect give @a water_breathing infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a instant_health infinite 31 true
effect give @a saturation infinite 255 true
effect give @a glowing infinite 255 true

#admin
execute as @a[tag=admin,tag=notadmin] run function deathswap:prepare/admin
execute as @a[gamemode=creative,tag=notadmin] run function deathswap:prepare/admin
execute as @a[tag=!notadmin,tag=!admin] run function deathswap:prepare/notadmin
tag @a[gamemode=!creative,tag=!admin,tag=creative] remove creative

#death to lobby
execute as @a if score @s deathswap.death matches 1 run tp @s @e[type=marker,tag=lobby,limit=1]

#creative
execute as @a[tag=admin,tag=!creative,gamemode=creative] run function deathswap:prepare/changeto_creative
execute as @a[tag=admin,tag=creative,gamemode=!creative] run function deathswap:prepare/changeto_survival
