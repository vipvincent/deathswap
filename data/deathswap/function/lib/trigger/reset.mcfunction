#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/trigger/reset.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# /trigger reset
#  1 reset

#reset
execute as @s[tag=admin,scores={reset=1}] run return run function deathswap:reset

#---
#error
tellraw @s {translate:"commands.help.failed",color:"red"}