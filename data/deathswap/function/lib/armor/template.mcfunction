#--------------------------------------------------
#Death Swap
#data/deathswap/function/armor/template.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$item modify entity @s armor.head {\
    "type": "set_components",\
    "components": {\
        "trim": {\
            "material": "$(material)",\
            "pattern": "silence"\
        }\
    }\
}

$item modify entity @s armor.chest {\
    "type": "set_components",\
    "components": {\
        "trim": {\
            "material": "$(material)",\
            "pattern": "silence"\
        }\
    }\
}

$item modify entity @s armor.legs {\
    "type": "set_components",\
    "components": {\
        "trim": {\
            "material": "$(material)",\
            "pattern": "silence"\
        }\
    }\
}

$item modify entity @s armor.feet {\
    "type": "set_components",\
    "components": {\
        "trim": {\
            "material": "$(material)",\
            "pattern": "silence"\
        }\
    }\
}