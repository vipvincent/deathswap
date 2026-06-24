#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/item_model.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#inventory/item_type/item_modifer/item_model

$item modify entity @s $(slot) {\
    "function":"set_components",\
    "components": {\
        "item_model":"$(item)" \
    }\
}