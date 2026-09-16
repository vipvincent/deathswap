#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/item_modifer/item_model.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s $(slot) {\
    "type":"set_components",\
    "components": {\
        "item_model":"$(item)" \
    }\
}