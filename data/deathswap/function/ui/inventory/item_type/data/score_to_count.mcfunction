#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/score_to_count.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/score_to_count

#score_to_count
data modify storage deathswap:temp inventory.count set from storage deathswap:temp inventory.score

# if count = 0 -> 1
execute if data storage deathswap:temp {inventory:{count:0}} run data modify storage deathswap:temp inventory.count set value 1