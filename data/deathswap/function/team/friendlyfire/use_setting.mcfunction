#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/friendlyfire/use_setting.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if score *team_friendlyfire deathswap.setting matches 0 run team modify red friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify blue friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify green friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify yellow friendlyFire false

execute if score *team_friendlyfire deathswap.setting matches 1 run team modify red friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify blue friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify green friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify yellow friendlyFire true