#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/name

#data temp - name
$execute if score *language deathswap.setting matches 1 run data modify storage deathswap:temp inventory.name set value $(name_en)
$execute if score *language deathswap.setting matches 2 run data modify storage deathswap:temp inventory.name set value $(name_zhtw)