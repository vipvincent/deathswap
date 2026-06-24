#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/lore.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/lore

#data temp - lore
$execute if score *language deathswap.setting matches 1 run data modify storage deathswap:temp inventory.lore set value $(lore_en)
$execute if score *language deathswap.setting matches 2 run data modify storage deathswap:temp inventory.lore set value $(lore_zhtw)