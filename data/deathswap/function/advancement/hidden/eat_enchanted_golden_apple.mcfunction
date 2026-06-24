#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/hidden/eat_enchanted_golden_apple.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/eat_enchanted_golden_apple=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/eat_enchanted_golden_apple
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/eat_enchanted_golden_apple