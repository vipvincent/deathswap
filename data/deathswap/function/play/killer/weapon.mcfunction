#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/killer/weapon.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

execute if score *killer.weapon deathswap.setting matches 1 run give @a[tag=killer] wooden_sword
execute if score *killer.weapon deathswap.setting matches 2 run give @a[tag=killer] stone_sword
execute if score *killer.weapon deathswap.setting matches 3 run give @a[tag=killer] copper_sword
execute if score *killer.weapon deathswap.setting matches 4 run give @a[tag=killer] iron_sword
execute if score *killer.weapon deathswap.setting matches 5 run give @a[tag=killer] golden_sword
execute if score *killer.weapon deathswap.setting matches 6 run give @a[tag=killer] diamond_sword
execute if score *killer.weapon deathswap.setting matches 7 run give @a[tag=killer] netherite_sword