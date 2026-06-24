#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/name_list.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/name_list

#data temp - name_list
$execute if score *language deathswap.setting matches 1 run data modify storage deathswap:temp inventory.name_list set value $(name_list_en)
$execute if score *language deathswap.setting matches 2 run data modify storage deathswap:temp inventory.name_list set value $(name_list_zhtw)
