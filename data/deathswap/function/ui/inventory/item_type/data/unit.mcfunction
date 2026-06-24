#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/data/unit.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/data/unit

#data temp - unit
$execute if score *language deathswap.setting matches 1 run data modify storage deathswap:temp inventory.unit set value "$(unit_en)"
$execute if score *language deathswap.setting matches 2 run data modify storage deathswap:temp inventory.unit set value "$(unit_zhtw)"