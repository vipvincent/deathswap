#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/hidden/enter_cobweb.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/enter_cobweb=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/enter_cobweb
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/enter_cobweb