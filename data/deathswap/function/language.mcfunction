#--------------------------------------------------
#Death Swap
#data/deathswap/function/language.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless data storage vipvincent:install_manager {deathswap:{install:1b}} run return run function deathswap:lib/return/not_installed

#sound
execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

#dialog
execute if data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run function deathswap:ui/dialog/language_op
execute unless data storage vipvincent:install_manager {deathswap:{install_stage:1b}} if entity @s[tag=notadmin] run function deathswap:ui/dialog/language_op
execute unless data storage vipvincent:install_manager {deathswap:{install_stage:1b}} if entity @s[tag=admin] run function deathswap:ui/dialog/language_admin
