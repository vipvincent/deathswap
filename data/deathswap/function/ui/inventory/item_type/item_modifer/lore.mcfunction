#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/lore.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/lore

$item modify entity @s $(slot) {\
    "function":"set_lore",\
    "mode":"replace_all",\
    "lore": $(lore) \
}