#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/item_list_to_item.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/item_list_to_item

#item_list_to_item
$execute if score $(score_name) $(score_objectives) matches $(score) run data modify storage deathswap:temp inventory.item set from storage deathswap:temp inventory.item_list[$(score)]