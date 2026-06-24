#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/name

$item modify entity @s $(slot) {\
    "function":"set_name",\
    "name": [$(name)]\
}