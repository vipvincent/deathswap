#play/play_time

#timer
function deathswap:play/timer

#swap/bossbar
function deathswap:play/swap/bossbar

#spawnpoint
execute as @a[tag=player] at @s run spawnpoint @s ~ ~ ~

#damage_taken
execute as @a[tag=player,scores={deathswap.damage_taken=1..}] run function deathswap:play/damage_taken

#leave game
execute if score *player_count_update deathswap.status > *player_count deathswap.status run function deathswap:play/leave_game
scoreboard players operation *player_count_update deathswap.status = *player_count deathswap.status

#effect
execute if score *saturation deathswap.setting matches 1 run effect give @a[tag=player] saturation infinite 255 true
execute if score *night_vision deathswap.setting matches 1 run effect give @a[tag=player] night_vision infinite 255 true
execute if score *glowing deathswap.setting matches 1 run effect give @a[tag=player] glowing infinite 255 true

#function
execute if score *furnace deathswap.setting matches 1 run function deathswap:lib/auto_furnace
execute if score *inventory_limit deathswap.setting matches ..36 run function deathswap:play/inventory_limit

#special_gameplay
execute if score *gmchange deathswap.setting matches 1 run function deathswap:play/gmchange/main
execute if score *arena deathswap.setting matches 1 run function deathswap:play/arena/main
execute if score *random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/main
execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 1 \
    if score *play_time deathswap.timer matches 5 if score *tick deathswap.timer matches 0 run function deathswap:play/killer/choose_killer

#---
#spectator
team join spectator @a[team=]
tag @a[team=spectator] remove player
tag @a[team=spectator] add spectator
tag @a[tag=eliminated] add spectator
effect give @a[tag=spectator] night_vision infinite 255 true

#---
#incorrect_gamemode

#play
execute as @a[tag=spectator,gamemode=!spectator] run function deathswap:play/incorrect_gamemode {gamemode:spectator}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 0 \
    as @a[tag=player,gamemode=!survival] run function deathswap:play/incorrect_gamemode {gamemode:survival}

#arena
execute if score *arena deathswap.status matches 1 as @a[tag=player,gamemode=!adventure] run function deathswap:play/incorrect_gamemode {gamemode:adventure}

#gmchange
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches 1.. \
    as @a[tag=player,gamemode=!survival] run function deathswap:play/incorrect_gamemode {gamemode:survival}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 \
    if score *gmchange deathswap.status matches 0 as @a[tag=player,gamemode=!survival] run function deathswap:play/incorrect_gamemode {gamemode:survival}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 \
    if score *gmchange deathswap.status matches 1 as @a[tag=player,gamemode=!creative] run function deathswap:play/incorrect_gamemode {gamemode:creative}

#---

#detect_end
execute if score *killer deathswap.setting matches 1 if score *player_count deathswap.status matches 1 if entity @a[tag=killer,tag=player] run return run function deathswap:end/main {end:5}
execute if score *solo_count deathswap.status matches 1 run return run function deathswap:end/main {end:0}

execute if score *team_count deathswap.status matches 1 if score *team_red deathswap.status matches 1 run return run function deathswap:end/main {end:1}
execute if score *team_count deathswap.status matches 1 if score *team_blue deathswap.status matches 1 run return run function deathswap:end/main {end:2}
execute if score *team_count deathswap.status matches 1 if score *team_yellow deathswap.status matches 1 run return run function deathswap:end/main {end:3}
execute if score *team_count deathswap.status matches 1 if score *team_green deathswap.status matches 1 run return run function deathswap:end/main {end:4}

execute if score *player_count deathswap.status matches 0 run return run function deathswap:end/main {end:-1}

#died
execute as @a[tag=player,scores={deathswap.death=1}] run function deathswap:play/eliminated

#wiped out
execute if score *team_red deathswap.status matches 1 if score *red_count deathswap.status matches 0 run function deathswap:play/wiped_out/red_team
execute if score *team_blue deathswap.status matches 1 if score *blue_count deathswap.status matches 0 run function deathswap:play/wiped_out/blue_team
execute if score *team_yellow deathswap.status matches 1 if score *yellow_count deathswap.status matches 0 run function deathswap:play/wiped_out/yellow_team
execute if score *team_green deathswap.status matches 1 if score *green_count deathswap.status matches 0 run function deathswap:play/wiped_out/green_team

#---
#swap_warn
execute if score *tick deathswap.timer matches 0 unless score *swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/warm

#swap
execute unless score *arena deathswap.status matches 0..1 if score *swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/main