#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/trigger/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# /trigger deathswap
execute as @a[scores={deathswap=1..}] run function deathswap:lib/trigger/deathswap
execute as @a[scores={deathswap=..-1}] run function deathswap:lib/trigger/deathswap

scoreboard players enable @a deathswap
scoreboard players set @a deathswap 0

# /trigger reset
execute as @a[tag=admin,scores={reset=1..}] run function deathswap:lib/trigger/reset
execute as @a[tag=admin,scores={reset=..-1}] run function deathswap:lib/trigger/reset

scoreboard players enable @a[tag=admin] reset
scoreboard players set @a[tag=admin] reset 0
scoreboard players reset @a[tag=!admin] reset