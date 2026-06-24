#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/tick.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#timer
function deathswap:play/timer

#actionbar
execute if score *language deathswap.setting matches 1 run function deathswap:ui/actionbar/en/play
execute if score *language deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/play

#spawnpoint
execute as @a[tag=player] at @s run spawnpoint @s ~ ~ ~

#damage_taken
execute as @a[tag=player,scores={deathswap.damage_taken=1..}] run function deathswap:play/damage_taken

#leave game
execute if score *player_count_update deathswap.status > *player_count deathswap.status run function deathswap:play/leave_game
scoreboard players operation *player_count_update deathswap.status = *player_count deathswap.status

#---
#effect
execute if score *saturation deathswap.setting matches 1 run effect give @a[tag=player] saturation infinite 255 true
execute if score *night_vision deathswap.setting matches 1 run effect give @a[tag=player] night_vision infinite 255 true
execute if score *glowing deathswap.setting matches 1 run effect give @a[tag=player] glowing infinite 255 true

#auto_furnace
execute if score *auto_furnace deathswap.setting matches 1 run function deathswap:lib/auto_furnace

#special_gameplay
execute if score *gmchange deathswap.setting matches 1 run function deathswap:play/gmchange/main
execute if score *arena deathswap.setting matches 1 run function deathswap:play/arena/main
execute if score *random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/main

#---
#bossbar - swap_countdown
function deathswap:ui/bossbar/swap_countdown

#swap_warn
execute if score *tick deathswap.timer matches 0 unless score *swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/warm

#swap
execute unless score *arena deathswap.status matches 0..1 if score *swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/main

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
execute as @a[tag=spectator,gamemode=!spectator] run function deathswap:lib/incorrect_gamemode {gamemode:spectator}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 0 \
    as @a[tag=player,gamemode=!survival] run function deathswap:lib/incorrect_gamemode {gamemode:survival}

#arena
execute if score *arena deathswap.status matches 1 as @a[tag=player,gamemode=!adventure] run function deathswap:lib/incorrect_gamemode {gamemode:adventure}

#gmchange
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches 1.. \
    as @a[tag=player,gamemode=!survival] run function deathswap:lib/incorrect_gamemode {gamemode:survival}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 \
    if score *gmchange deathswap.status matches 0 as @a[tag=player,gamemode=!survival] run function deathswap:lib/incorrect_gamemode {gamemode:survival}
execute unless score *arena deathswap.status matches 1 if score *gmchange deathswap.setting matches 1 if score *gmchange.pause deathswap.timer matches ..0 \
    if score *gmchange deathswap.status matches 1 as @a[tag=player,gamemode=!creative] run function deathswap:lib/incorrect_gamemode {gamemode:creative}

#---
#died
execute as @a[tag=player,scores={deathswap.death=1}] run function deathswap:play/eliminated

#wiped out
execute if score *team_red deathswap.status matches 1 if score *red_count deathswap.status matches 0 run function deathswap:play/wiped_out/team_red
execute if score *team_blue deathswap.status matches 1 if score *blue_count deathswap.status matches 0 run function deathswap:play/wiped_out/team_blue
execute if score *team_green deathswap.status matches 1 if score *green_count deathswap.status matches 0 run function deathswap:play/wiped_out/team_green
execute if score *team_yellow deathswap.status matches 1 if score *yellow_count deathswap.status matches 0 run function deathswap:play/wiped_out/team_yellow

#---
#detect_end
execute if score *player_count deathswap.status matches 1 if entity @a[tag=killer,tag=player] run return run function deathswap:end/main {end:"killer_win"}

execute if score *solo_count deathswap.status matches 1 run return run function deathswap:end/main {end:"solo_win"}

execute if score *team_count deathswap.status matches 1 if score *team_red deathswap.status matches 1 run return run function deathswap:end/main {end:"red_win"}
execute if score *team_count deathswap.status matches 1 if score *team_blue deathswap.status matches 1 run return run function deathswap:end/main {end:"blue_win"}
execute if score *team_count deathswap.status matches 1 if score *team_green deathswap.status matches 1 run return run function deathswap:end/main {end:"green_win"}
execute if score *team_count deathswap.status matches 1 if score *team_yellow deathswap.status matches 1 run return run function deathswap:end/main {end:"yellow_win"}

execute if score *player_count deathswap.status matches 0 run return run function deathswap:end/main {end:"all_fail"}
