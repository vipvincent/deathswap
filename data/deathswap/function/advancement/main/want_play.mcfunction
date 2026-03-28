#advancement/main/want_play

#return
execute unless entity @s[advancements={deathswap:main/criteria/want_play=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:main/en/want_play
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:main/tw/want_play