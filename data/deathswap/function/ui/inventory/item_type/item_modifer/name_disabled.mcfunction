#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name_disabled.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/name_disabled

$item modify entity @s $(slot) {\
    "function":"set_name",\
    "name": [$(name_disabled)]\
}