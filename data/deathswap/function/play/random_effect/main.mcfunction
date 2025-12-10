#play/random_effect/main

#bossbar
function deathswap:play/random_effect/bossbar with storage deathswap:storage_main random_effect

#random
execute if score *random_effect deathswap.timer matches 0 run function deathswap:play/random_effect/random
