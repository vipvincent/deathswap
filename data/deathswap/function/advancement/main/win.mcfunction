#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/main/win.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless entity @s[advancements={deathswap:main/criteria/win=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s[tag=!killer] only deathswap:main/en/win
execute if score *language deathswap.setting matches 2 run advancement grant @s[tag=!killer] only deathswap:main/tw/win

execute if score *language deathswap.setting matches 1 run advancement grant @s[tag=killer] only deathswap:main/en/killer_win
execute if score *language deathswap.setting matches 2 run advancement grant @s[tag=killer] only deathswap:main/tw/killer_win