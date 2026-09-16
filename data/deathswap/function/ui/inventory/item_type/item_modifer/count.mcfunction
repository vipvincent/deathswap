#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/count.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s $(slot) {\
    "type":"set_count",\
    "count": $(count) \
}