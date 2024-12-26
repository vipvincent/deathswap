#reset
scoreboard players reset swap_check deathswap.status
tag @e[tag=pos,tag=pos1] remove pos1
tag @e[tag=pos,tag=pos2] remove pos2
tag @e[tag=pos,tag=pos3] remove pos3
tag @e[tag=pos,tag=pos4] remove pos4

#pos
execute if score team_red deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"red_pos",sort=random,limit=1] add pos1
execute if score team_blue deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"blue_pos",sort=random,limit=1] add pos2
execute if score team_yellow deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"yellow_pos",sort=random,limit=1] add pos3
execute if score team_green deathswap.status matches 1 run tag @e[tag=pos,tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,name=!"green_pos",sort=random,limit=1] add pos4

#swap check
execute if entity @e[tag=pos1] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos2] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos3] run scoreboard players add swap_check deathswap.status 1
execute if entity @e[tag=pos4] run scoreboard players add swap_check deathswap.status 1

#swap check ok
execute if score swap_check deathswap.status = team_count deathswap.count run return run function deathswap:play/swap/tp

#swap check error
function deathswap:play/swap/random
