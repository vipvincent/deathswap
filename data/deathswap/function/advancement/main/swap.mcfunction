#advancement/main/swap

#return
execute unless entity @s[advancements={deathswap:main/criteria/swap=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/swap
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/swap