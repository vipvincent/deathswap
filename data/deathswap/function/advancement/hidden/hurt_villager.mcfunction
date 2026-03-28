#advancement/hidden/hurt_villager

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/hurt_villager=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/hurt_villager
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/hurt_villager