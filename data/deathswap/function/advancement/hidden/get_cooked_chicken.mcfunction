#advancement/hidden/get_cooked_chicken

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/get_cooked_chicken=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/get_cooked_chicken
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/get_cooked_chicken