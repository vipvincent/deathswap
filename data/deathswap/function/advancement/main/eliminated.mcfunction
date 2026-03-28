#advancement/main/eliminated

#return
execute unless entity @s[advancements={deathswap:main/criteria/eliminated=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/eliminated
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/eliminated