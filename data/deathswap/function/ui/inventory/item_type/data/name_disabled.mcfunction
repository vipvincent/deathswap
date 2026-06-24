#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/name_disabled.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/name_disabled

#data temp - name_disabled
$execute if score *language deathswap.setting matches 1 run data modify storage deathswap:temp inventory.name_disabled set value $(name_disabled_en)
$execute if score *language deathswap.setting matches 2 run data modify storage deathswap:temp inventory.name_disabled set value $(name_disabled_zhtw)