#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/trigger/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#give default value
execute as @a unless score @s deathswap matches -2147483648..2147483647 run scoreboard players set @a deathswap 0
execute as @a[tag=admin] unless score @s reset matches -2147483648..2147483647 run scoreboard players set @a reset 0

#---
# /trigger deathswap
execute as @a unless score @s deathswap matches 0 run function deathswap:lib/trigger/deathswap

scoreboard players enable @a deathswap
scoreboard players set @a deathswap 0

# /trigger reset
execute as @a[tag=admin] unless score @s reset matches 0 run function deathswap:lib/trigger/reset

scoreboard players enable @a[tag=admin] reset
scoreboard players set @a[tag=admin] reset 0
scoreboard players reset @a[tag=!admin] reset