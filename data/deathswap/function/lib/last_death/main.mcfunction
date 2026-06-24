#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/last_death/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#data to storage
data modify storage deathswap:temp last_death.dimension set from entity @s LastDeathLocation.dimension
data modify storage deathswap:temp last_death.pos_x set from entity @s LastDeathLocation.pos[0]
data modify storage deathswap:temp last_death.pos_y set from entity @s LastDeathLocation.pos[1]
data modify storage deathswap:temp last_death.pos_z set from entity @s LastDeathLocation.pos[2]

#tp
function deathswap:lib/last_death/tp with storage deathswap:temp last_death

#data clear
data remove storage deathswap:temp last_death