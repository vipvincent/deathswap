#special_gameplay

#gmchange
execute if score *gmchange deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.9 with feather[\
        custom_data={ui:1b},\
        custom_name={text:"Game Mode Auto Switch: Disabled",color:red,italic:false},\
        lore=[\
            {text:"Set time to automatically switch game modes",color:"gray",italic:false},\
            {text:"(Note: It is recommended to restrict certain items,",color:"gray",italic:false},\
            {text:" such as Totem of Undying, Enchanted/Golden Apple,",color:"gray",italic:false},\
            {text:" Potion, and Suspicious Stew.)",color:"gray",italic:false},\
        ]\
    ]
execute if score *gmchange deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.9 with feather[\
        custom_data={ui:1b},\
        enchantment_glint_override=true,\
        custom_name={text:"Game Mode Auto Switch: Enabled",color:green,italic:false},\
        lore=[\
            {text:"Set time to automatically switch game modes",color:"gray",italic:false},\
            {text:"(Note: It is recommended to restrict certain items,",color:"gray",italic:false},\
            {text:" such as Totem of Undying, Enchanted/Golden Apple,",color:"gray",italic:false},\
            {text:" Potion, and Suspicious Stew.)",color:"gray",italic:false},\
        ]\
    ]

execute if score *gmchange deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.18 with written_book[\
        custom_data={ui:1b},\
        custom_name={text: "Setting - Game Mode Auto Switch",color:yellow,italic:false}\
    ]

#killer
execute if score *mode deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with barrier[\
        custom_data={ui:1b},\
        custom_name={text:"Solo Battle does not support this setting!",color:"red",italic:false}\
    ]

execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with iron_sword[\
        custom_data={ui:1b},\
        custom_name={text:"Killer Mode: Disabled",color:red,italic:false},\
        lore=[\
            {text:"Killers hide within teams",color:"gray",italic:false},\
            {text:"and are hostile to each other.",color:"gray",italic:false},\
            {text:"Kill all other players and survive to win.",color:"gray",italic:false},\
            {text:"Act in secret and stop teams from winning.",color:"gray",italic:false},\
            {text:"(Team wins do not grant victory)",color:"gray",italic:false},\
            {text:"(2+ players per team advised)",color:"gray",italic:false},\
        ]\
    ]
execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with iron_sword[\
        custom_data={ui:1b},\
        enchantment_glint_override=true,\
        custom_name={text:"Killer Mode: Enabled",color:green,italic:false},\
        lore=[\
            {text:"Killers hide within teams",color:"gray",italic:false},\
            {text:"and are hostile to each other.",color:"gray",italic:false},\
            {text:"Kill all other players and survive to win.",color:"gray",italic:false},\
            {text:"Act in secret and stop teams from winning.",color:"gray",italic:false},\
            {text:"(Team wins do not grant victory)",color:"gray",italic:false},\
            {text:"(2+ players per team advised)",color:"gray",italic:false},\
        ]\
    ]

execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.19 with written_book[\
        custom_data={ui:1b},\
        custom_name={text: "Setting - Killer Mode",color:yellow,italic:false}\
    ]

#arena
execute if score *arena deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with redstone[\
        custom_data={ui:1b},\
        custom_name={text:"Arena: Disabled",color:red,italic:false}\
    ]
execute if score *arena deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with redstone[\
        custom_data={ui:1b},\
        enchantment_glint_override=true,\
        custom_name={text:"Arena: Enabled",color:green,italic:false}\
    ]

execute if score *arena deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.20 with written_book[\
        custom_data={ui:1b},\
        custom_name={text: "Setting - Arena",color:yellow,italic:false}\
    ]

#random_effect
execute if score *random_effect deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with potion[\
        custom_data={ui:1b},\
        tooltip_display={hidden_components:[potion_contents]},\
        custom_name={text:"Random Effect: Disabled",color:red,italic:false},\
        lore=[{text:"60 seconds to randomly gain an effect",color:"gray",italic:false}]\
    ]
execute if score *random_effect deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with potion[\
        custom_data={ui:1b},\
        tooltip_display={hidden_components:[potion_contents]},\
        enchantment_glint_override=true,\
        custom_name={text:"Random Effect: Enabled",color:green,italic:false},\
        lore=[{text:"60 seconds to randomly gain an effect",color:"gray",italic:false}]\
    ]

execute if score *random_effect deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.21 with written_book[\
        custom_data={ui:1b},\
        custom_name={text:"Setting - Random Effect",color:yellow,italic:false}\
    ]
