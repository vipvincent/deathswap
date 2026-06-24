#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/root.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#main_root
execute if score *language deathswap.setting matches 1 run advancement grant @a only deathswap:main/en/root
execute if score *language deathswap.setting matches 2 run advancement grant @a only deathswap:main/tw/root

#hidden_root
execute if score *game deathswap.status matches 2..3 if score *language deathswap.setting matches 1 run advancement grant @a only deathswap:hidden/en/root
execute if score *game deathswap.status matches 2..3 if score *language deathswap.setting matches 2 run advancement grant @a only deathswap:hidden/tw/root
