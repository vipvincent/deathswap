#advancement/hidden/iron_golem_hurt_player

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/iron_golem_hurt_player=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/iron_golem_hurt_player
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/iron_golem_hurt_player