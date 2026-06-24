#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/arena/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# arena status
# -1 not arena
#  0 prepare 
#  1 arena loading
#  2 arena start

# arena.shrink status
# 0 wait shrink
# 1 start shrink
# 2 stop shrink

#bossbar
function deathswap:ui/bossbar/arena

#prepare
execute if score *arena deathswap.status matches -1 if score *arena.start deathswap.setting = *swap_count deathswap.status run function deathswap:play/arena/prepare

#---
##loading arena
execute if score *arena deathswap.status matches 0 if score *arena deathswap.timer matches 0 run function deathswap:play/arena/loading

#timer
execute if score *arena deathswap.status matches 1 run scoreboard players add *arena deathswap.timer 1

#tp_border
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 60 run function deathswap:play/arena/tp_border

#wait text
execute if score *arena deathswap.status matches 1 run function deathswap:play/arena/loading_title

#start arena
execute if score *arena deathswap.status matches 1 if score *arena deathswap.timer matches 200 run function deathswap:play/arena/start

#---
#shrink
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 0 if score *arena deathswap.timer matches 0 run function deathswap:play/arena/shrink_start
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 1 if score *arena deathswap.timer matches 30 run function deathswap:play/arena/shrink_wait

#glowing
execute if score *arena deathswap.status matches 2 if score *arena.shrink deathswap.status matches 2 run effect give @a[tag=player] glowing infinite 255 true
