#advancement/main/wiped_out

#return
execute unless entity @s[advancements={deathswap:main/criteria/wiped_out=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/wiped_out
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/wiped_out