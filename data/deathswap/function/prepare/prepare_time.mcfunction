#actionbar
function deathswap:prepare/actionbar

#bossbar
execute if score language deathswap.setting matches 1 run bossbar set deathswap:wait name {"text": "§eYou are waiting for play §6Death Swap"}
execute if score language deathswap.setting matches 2 run bossbar set deathswap:wait name {"text": "§e你正在等待遊玩§6死亡交換"}

#count
scoreboard players set player_count deathswap.count 0
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
scoreboard players set team_count deathswap.count 0
execute as @a[team=!spectator] run scoreboard players add player_count deathswap.count 1
execute as @a[team=red] run scoreboard players add red_count deathswap.count 1
execute as @a[team=blue] run scoreboard players add blue_count deathswap.count 1
execute as @a[team=yellow] run scoreboard players add yellow_count deathswap.count 1
execute as @a[team=green] run scoreboard players add green_count deathswap.count 1
execute if entity @a[team=red] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=blue] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=yellow] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=green] run scoreboard players add team_count deathswap.count 1

#effect
effect give @a night_vision 11 255 true
effect give @a water_breathing 1 255 true
effect give @a resistance 1 255 true
effect give @a regeneration 1 255 true
effect give @a instant_health 1 31 true
effect give @a saturation 1 255 true
effect give @a glowing 1 255 true

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
