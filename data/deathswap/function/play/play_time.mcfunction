#timer
function deathswap:play/timer

#swap warn
execute if score tick deathswap.timer matches 0 unless score swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/warm

#bossbar
execute if score arena deathswap.setting matches 0..1 if score language deathswap.setting matches 1 if score swap_bossbar deathswap.setting matches 0 run bossbar set deathswap:swap_countdown name [{"text": "§f[Spectator/Eliminated] Swap Countdown: "},{"score":{"name": "swap_countdown","objective": "deathswap.timer"}},{"text": "s"}]
execute if score arena deathswap.setting matches 0..1 if score language deathswap.setting matches 2 if score swap_bossbar deathswap.setting matches 0 run bossbar set deathswap:swap_countdown name [{"text": "§f[旁觀/淘汰者顯示] 交換倒數："},{"score":{"name": "swap_countdown","objective": "deathswap.timer"}},{"text": "秒"}]
execute if score arena deathswap.setting matches 0..1 if score language deathswap.setting matches 1 if score swap_bossbar deathswap.setting matches 1 run bossbar set deathswap:swap_countdown name [{"text": "§fSwap Countdown: "},{"score":{"name": "swap_countdown","objective": "deathswap.timer"}},{"text": "s"}]
execute if score arena deathswap.setting matches 0..1 if score language deathswap.setting matches 2 if score swap_bossbar deathswap.setting matches 1 run bossbar set deathswap:swap_countdown name [{"text": "§f交換倒數："},{"score":{"name": "swap_countdown","objective": "deathswap.timer"}},{"text": "秒"}]
execute store result bossbar deathswap:swap_countdown max run scoreboard players get swap_time deathswap.status
execute store result bossbar deathswap:swap_countdown value run scoreboard players get swap_countdown deathswap.timer

#effect
execute if score saturation deathswap.setting matches 1 run effect give @a[tag=player] saturation infinite 255 true
execute if score night_vision deathswap.setting matches 1 run effect give @a[tag=player] night_vision infinite 255 true
execute if score glowing deathswap.setting matches 1 run effect give @a[tag=player] glowing infinite 255 true

#function
execute if score furnace deathswap.setting matches 1 run function deathswap:play/furnace
execute if score inventory_limit deathswap.setting matches 1.. run function deathswap:play/inventory_limit

#special_gameplay
execute if score gmchange deathswap.setting matches 1 run function deathswap:play/gmchange/main
execute if score arena deathswap.setting matches 1 run function deathswap:play/arena/main
execute if score random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/main

#hurt_tip
execute as @a[tag=player] if score @s deathswap.hurt > @s deathswap.health run function deathswap:play/hurt_tip
execute as @a run scoreboard players operation @s deathswap.hurt = @s deathswap.health

#gamemode
gamemode spectator @a[tag=!player]
execute if score gmchange deathswap.setting matches 0 run gamemode survival @a[tag=player]

#spectator
team join spectator @a[team=]
tag @a[team=spectator] add spectator
tag @a[team=spectator] remove player
tag @a[tag=eliminated] add spectator
effect give @a[tag=spectator] night_vision infinite 255 true
execute as @a[tag=spectator] run gamemode spectator @s

#died
execute as @a[tag=player] if score @s deathswap.death matches 1 run function deathswap:play/eliminated

#wiped out
execute if score team_red deathswap.status matches 1 if score red_count deathswap.count matches 0 run function deathswap:play/wiped_out/red_team
execute if score team_blue deathswap.status matches 1 if score blue_count deathswap.count matches 0 run function deathswap:play/wiped_out/blue_team
execute if score team_yellow deathswap.status matches 1 if score yellow_count deathswap.count matches 0 run function deathswap:play/wiped_out/yellow_team
execute if score team_green deathswap.status matches 1 if score green_count deathswap.count matches 0 run function deathswap:play/wiped_out/green_team

#killer
execute if score mode deathswap.setting matches 2 if score killer deathswap.setting matches 1 if score play_time deathswap.timer matches 5 if score tick deathswap.timer matches 0 run function deathswap:play/choose_killer
execute if score killer deathswap.setting matches 1 if score player_count deathswap.count matches 1 as @a[tag=killer,tag=player] run return run function deathswap:end/main {end:5}

#win
execute if score solo_count deathswap.count matches 1 as @a[team=solo,tag=player] run return run function deathswap:end/main {end:0}

execute if score team_count deathswap.count matches 1 if score team_red deathswap.status matches 1 run return run function deathswap:end/main {end:1}
execute if score team_count deathswap.count matches 1 if score team_blue deathswap.status matches 1 run return run function deathswap:end/main {end:2}
execute if score team_count deathswap.count matches 1 if score team_yellow deathswap.status matches 1 run return run function deathswap:end/main {end:3}
execute if score team_count deathswap.count matches 1 if score team_green deathswap.status matches 1 run return run function deathswap:end/main {end:4}

#all_fail
execute if score player_count deathswap.count matches 0 run return run function deathswap:end/main {end:-1}

#swap
execute unless score arena deathswap.status matches 0..1 if score swap_countdown deathswap.timer matches 0 run function deathswap:play/swap/main