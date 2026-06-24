#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name_score_unit.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/name_score_unit

$item modify entity @s $(slot) {\
    "function":"set_name",\
    "name": [$(name),"$(score)$(unit)"]\
}