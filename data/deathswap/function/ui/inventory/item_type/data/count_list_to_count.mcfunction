#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/count_list_to_count.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/count_list_to_count

#count_list_to_count
$execute if score $(score_name) $(score_objectives) matches $(score) run data modify storage deathswap:temp inventory.count set from storage deathswap:temp inventory.count_list[$(score)]