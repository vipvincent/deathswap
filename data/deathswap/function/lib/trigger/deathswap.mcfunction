#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/trigger/deathswap.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# /trigger deathswap
#  1 info
# 10 language_ui
# 11 lanugage/en 
# 12 lanugage/zhtw 

#info
execute as @s[scores={deathswap=1}] run return run function deathswap:ui/info

#language
execute as @s[tag=admin,scores={deathswap=10}] run return run function deathswap:language
execute as @s[tag=admin,scores={deathswap=11}] run return run function deathswap:setting/language/en
execute as @s[tag=admin,scores={deathswap=12}] run return run function deathswap:setting/language/zhtw

#---
#error
tellraw @s {translate:"commands.help.failed",color:"red"}