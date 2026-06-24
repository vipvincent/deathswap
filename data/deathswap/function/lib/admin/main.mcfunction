#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/admin/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute as @a[tag=admin,tag=notadmin] run function deathswap:lib/admin/obtain
execute if score *game deathswap.status matches 0 as @a[gamemode=creative,tag=notadmin] run function deathswap:lib/admin/obtain
execute as @a[tag=!notadmin,tag=!admin] run function deathswap:lib/admin/lost
tag @a[gamemode=!creative,tag=!admin,tag=creative] remove creative