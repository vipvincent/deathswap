#lib/last_death/main

#data clear
data remove storage deathswap:storage_main last_death

#data to storage
data modify storage deathswap:storage_main last_death.dimension set from entity @s LastDeathLocation.dimension
data modify storage deathswap:storage_main last_death.pos_x set from entity @s LastDeathLocation.pos[0]
data modify storage deathswap:storage_main last_death.pos_y set from entity @s LastDeathLocation.pos[1]
data modify storage deathswap:storage_main last_death.pos_z set from entity @s LastDeathLocation.pos[2]

#tp
function deathswap:lib/last_death/tp with storage deathswap:storage_main last_death

#data clear
data remove storage deathswap:storage_main last_death