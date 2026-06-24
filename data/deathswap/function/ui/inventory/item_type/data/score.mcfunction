#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/score.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/score

#data temp - score_name & score_objectives
$data modify storage deathswap:temp inventory.score_name set value "$(score_name)"
$data modify storage deathswap:temp inventory.score_objectives set value "$(score_objectives)"

#data temp - score
$execute store result storage deathswap:temp inventory.score int 1 run scoreboard players get $(score_name) $(score_objectives)