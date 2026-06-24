#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/main/spectator.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless entity @s[advancements={deathswap:main/criteria/spectator=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/spectator
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/spectator