#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/lore.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s $(slot) {\
    "type":"set_lore",\
    "mode":"replace_all",\
    "lore": $(lore) \
}