#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/hidden/polar_bear_hurt_player.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless score *game deathswap.status matches 2 run return fail
execute unless entity @s[advancements={deathswap:hidden/criteria/polar_bear_hurt_player=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s only deathswap:hidden/en/polar_bear_hurt_player
execute if score *language deathswap.setting matches 2 run advancement grant @s only deathswap:hidden/tw/polar_bear_hurt_player