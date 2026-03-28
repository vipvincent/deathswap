#actionbar

#en
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 0 run function deathswap:ui/actionbar/en/prepare
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 1..2 run function deathswap:ui/actionbar/en/play
execute if score *language deathswap.setting matches 1 if score *game deathswap.status matches 3 run function deathswap:ui/actionbar/en/end

#tw
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 0 run function deathswap:ui/actionbar/tw/prepare
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 1..2 run function deathswap:ui/actionbar/tw/play
execute if score *language deathswap.setting matches 2 if score *game deathswap.status matches 3 run function deathswap:ui/actionbar/tw/end