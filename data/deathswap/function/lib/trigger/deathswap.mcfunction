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
execute if score @s deathswap matches 1 run return run function deathswap:ui/info

#language
execute if score @s[tag=admin] deathswap matches 10 run return run function deathswap:language
execute if score @s[tag=admin] deathswap matches 11 run return run function deathswap:setting/language/en
execute if score @s[tag=admin] deathswap matches 12 run return run function deathswap:setting/language/zhtw

#---
#error
tellraw @s {translate:"commands.help.failed",color:"red"}