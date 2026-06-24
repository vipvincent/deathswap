#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/name_list_to_name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/name_list_to_name

#name_list to get name
$execute if score $(score_name) $(score_objectives) matches $(score) run data modify storage deathswap:temp inventory.name set from storage deathswap:temp inventory.name_list[$(score)]