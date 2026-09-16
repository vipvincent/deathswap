#--------------------------------------------------
#Death Swap
#data/deathswap/function/phase/gameplay/random_effect/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#bossbar
function deathswap:ui/bossbar/random_effect with storage deathswap:temp random_effect

#random
execute if score *random_effect deathswap.timer matches 0 run function deathswap:phase/gameplay/random_effect/random
