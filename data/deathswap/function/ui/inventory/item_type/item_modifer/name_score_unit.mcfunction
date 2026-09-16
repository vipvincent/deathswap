#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name_score_unit.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s $(slot) {\
    "type":"set_name",\
    "name": [$(name),"$(score)$(unit)"]\
}