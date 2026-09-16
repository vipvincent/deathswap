#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/trigger/reset.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# /trigger reset
#  1 reset

#reset
execute if score @s reset matches 1 run return run function deathswap:reset

#---
#error
tellraw @s {translate:"commands.help.failed",color:"red"}