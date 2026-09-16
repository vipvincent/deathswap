#--------------------------------------------------
#Death Swap
#data/deathswap/function/armor/leather_color.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s armor.head {\
    "type": "set_components",\
    "components": {\
        "dyed_color": $(dyed_color) \
    }\
}

$item modify entity @s armor.chest {\
    "type": "set_components",\
    "components": {\
        "dyed_color": $(dyed_color) \
    }\
}

$item modify entity @s armor.legs {\
    "type": "set_components",\
    "components": {\
        "dyed_color": $(dyed_color) \
    }\
}

$item modify entity @s armor.feet {\
    "type": "set_components",\
    "components": {\
        "dyed_color": $(dyed_color) \
    }\
}