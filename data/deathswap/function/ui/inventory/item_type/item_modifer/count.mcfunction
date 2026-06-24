#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/count.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/count

$item modify entity @s $(slot) {\
    "function":"set_count",\
    "count": $(count) \
}