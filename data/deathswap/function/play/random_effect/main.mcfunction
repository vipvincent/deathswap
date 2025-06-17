#execute if score random_effect deathswap.timer matches 11.. run function deathswap:play/random_effect/effect

#bossbar
function deathswap:play/random_effect/bossbar with storage deathswap:status random_effect

#random
execute if score random_effect deathswap.timer matches 0 run function deathswap:play/random_effect/random
