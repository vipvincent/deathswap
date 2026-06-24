#--------------------------------------------------
#Death Swap
#data/deathswap/function/tick.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless data storage vipvincent:install_manager {deathswap:{install:1b}} run return run title @a actionbar {text:"Type \"/function deathswap:install\" to install Death Swap",color:gold}
execute if data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run return run title @a actionbar {text:"Type \"/function deathswap:language\" to choose language",color:yellow}

#---
#join_game (leave_game)
execute as @a unless score @s deathswap.leave_game matches 0 run function deathswap:lib/join_game
scoreboard players set @a deathswap.leave_game 0

#admin
function deathswap:lib/admin/main

#---
# game status
# 0 prepare 
# 1 loading
# 2 play 
# 3 win 
execute if score *game deathswap.status matches 0 run function deathswap:prepare/tick
execute if score *game deathswap.status matches 1 run function deathswap:loading/tick
execute if score *game deathswap.status matches 2 run function deathswap:play/tick
execute if score *game deathswap.status matches 3 run function deathswap:end/tick

#---
#max_health
function deathswap:lib/max_health

#count
function deathswap:lib/count

#trigger
function deathswap:lib/trigger/main

#minute_second
function deathswap:lib/minute_second

#display sidebar
function #deathswap:ui/sidebar

#advancement
function deathswap:advancement/root

#lobby
execute as @e[tag=lobby_text] at @s unless entity @e[tag=lobby,distance=..0.5] run kill @s
function deathswap:ui/particle_circle

#death
scoreboard players reset @a deathswap.death

#win score
execute as @a unless score @s deathswap.win_score matches 1.. run scoreboard players set @s deathswap.win_score 0

#play_count
execute unless score *play_count deathswap.status matches 1.. run scoreboard players set *play_count deathswap.status 0
