#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/hidden/visit_village.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/visit_village=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/visit_village
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/visit_village