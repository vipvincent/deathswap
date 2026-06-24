#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/name_right_click.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/name_right_click

$item modify entity @s $(slot) {\
    "function":"set_name",\
    "name": [$(name),[" (",{"keybind":"key.use"},")"]]\
}

