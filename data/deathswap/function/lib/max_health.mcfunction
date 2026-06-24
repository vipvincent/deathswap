#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/max_health.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute as @a if score *max_health deathswap.setting matches 1 run attribute @s minecraft:max_health base set 1
execute as @a if score *max_health deathswap.setting matches 10 run attribute @s minecraft:max_health base set 10
execute as @a if score *max_health deathswap.setting matches 20 run attribute @s minecraft:max_health base set 20
execute as @a if score *max_health deathswap.setting matches 30 run attribute @s minecraft:max_health base set 30
execute as @a if score *max_health deathswap.setting matches 40 run attribute @s minecraft:max_health base set 40
execute as @a if score *max_health deathswap.setting matches 50 run attribute @s minecraft:max_health base set 50
execute as @a if score *max_health deathswap.setting matches 60 run attribute @s minecraft:max_health base set 60