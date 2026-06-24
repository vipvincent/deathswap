#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/main/start.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless entity @s[advancements={deathswap:main/criteria/start=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/start
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/start