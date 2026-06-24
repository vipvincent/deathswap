#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/collisionrule/use_setting.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

team modify solo collisionRule always

execute if score *team_collisionrule deathswap.setting matches 0 run team modify red collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 0 run team modify blue collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 0 run team modify green collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 0 run team modify yellow collisionRule pushOwnTeam

execute if score *team_collisionrule deathswap.setting matches 1 run team modify red collisionRule always
execute if score *team_collisionrule deathswap.setting matches 1 run team modify blue collisionRule always
execute if score *team_collisionrule deathswap.setting matches 1 run team modify green collisionRule always
execute if score *team_collisionrule deathswap.setting matches 1 run team modify yellow collisionRule always
