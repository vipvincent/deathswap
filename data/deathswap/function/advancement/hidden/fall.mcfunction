#advancement/hidden/fall

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/fall=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/fall
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/fall