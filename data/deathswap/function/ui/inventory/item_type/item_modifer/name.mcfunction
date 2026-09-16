#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s $(slot) {\
    "type":"set_name",\
    "name": [$(name)]\
}