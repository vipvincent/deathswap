#advancement/hidden/used_totem

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/used_totem=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/used_totem
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/used_totem