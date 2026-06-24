#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/hidden/hurt_iron_golem.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/hurt_iron_golem=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/hurt_iron_golem
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/hurt_iron_golem