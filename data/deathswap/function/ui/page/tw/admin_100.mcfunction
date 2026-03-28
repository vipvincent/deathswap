#special_gameplay

#gmchange
execute if score *gmchange deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.9 with feather[\
        custom_data={ui:1b},\
        custom_name={text:"遊戲模式自動切換：關閉",color:red,italic:false},\
        lore=[\
            {text:"在設定的時間自動切換遊戲模式",color:"gray",italic:false},\
            {text:"(註：建議自行限制物品，如：不死圖騰、",color:"gray",italic:false},\
            {text:" 附魔/金蘋果、藥水、可疑的燉湯)",color:"gray",italic:false}\
        ]\
    ]
execute if score *gmchange deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.9 with feather[\
        custom_data={ui:1b},\
        enchantment_glint_override=true,\
        custom_name={text:"遊戲模式自動切換：開啟",color:green,italic:false},\
        lore=[\
            {text:"在設定的時間自動切換遊戲模式",color:"gray",italic:false},\
            {text:"(註：建議自行限制物品，如：不死圖騰、",color:"gray",italic:false},\
            {text:" 附魔/金蘋果、藥水、可疑的燉湯)",color:"gray",italic:false}\
        ]\
    ]

execute if score *gmchange deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.18 with written_book[\
        custom_data={ui:1b},\
        custom_name={text:"設定-遊戲模式自動切換",color:yellow,italic:false}\
    ]

#killer
execute if score *mode deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with barrier[\
        custom_data={ui:1b},\
        custom_name={text:"個人戰不支援此設定",color:red,italic:false}\
    ]

execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with stick[\
        custom_data={ui:1b},\
        item_model=iron_sword,\
        custom_name={text:"殺手模式：關閉",color:red,italic:false},\
        lore=[\
            {text:"殺手潛伏於隊伍中，彼此互為敵對。",color:"gray",italic:false},\
            {text:"目標為擊殺所有其他玩家，僅有自身存活時才算獲勝。",color:"gray",italic:false},\
            {text:"殺手必須暗中行動，避免暴露身分，",color:"gray",italic:false},\
            {text:"並阻止任何隊伍取得勝利。",color:"gray",italic:false},\
            {text:"(隊伍勝利不計為殺手勝利)",color:"gray",italic:false},\
            {text:"(建議每隊至少2人以上，以確保遊戲體驗。)",color:"gray",italic:false},\
        ]\
    ]
execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.10 with stick[\
        custom_data={ui:1b},\
        item_model=iron_sword,\
        custom_name={text:"殺手模式：開啟",color:green,italic:false},\
        enchantment_glint_override=true,\
        lore=[\
            {text:"殺手潛伏於隊伍中，彼此互為敵對。",color:"gray",italic:false},\
            {text:"目標為擊殺所有其他玩家，僅有自身存活時才算獲勝。",color:"gray",italic:false},\
            {text:"殺手必須暗中行動，避免暴露身分，",color:"gray",italic:false},\
            {text:"並阻止任何隊伍取得勝利。",color:"gray",italic:false},\
            {text:"(隊伍勝利不計為殺手勝利)",color:"gray",italic:false},\
            {text:"(建議每隊至少2人以上，以確保遊戲體驗。)",color:"gray",italic:false},\
        ]\
    ]

execute if score *mode deathswap.setting matches 2 if score *killer deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.19 with written_book[\
        custom_data={ui:1b},\
        custom_name={text:"設定-殺手模式",color:yellow,italic:false}\
    ]

#arena
execute if score *arena deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with redstone[\
        custom_data={ui:1b},\
        custom_name={text:"競技場：關閉",color:red,italic:false}\
    ]
execute if score *arena deathswap.setting matches 1 run \
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with redstone[\
        custom_data={ui:1b},\
        enchantment_glint_override=true,\
        custom_name={text:"競技場：開啟",color:green,italic:false},\
    ]

execute if score *arena deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.20 with written_book[\
        custom_data={ui:1b},\
        custom_name={text:"設定-競技場",color:yellow,italic:false}\
    ]

#random_effect
execute if score *random_effect deathswap.setting matches 0 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with potion[\
        custom_data={ui:1b},\
        tooltip_display={hidden_components:[potion_contents]},\
        custom_name={text:"隨機效果：關閉",color:red,italic:false},\
        lore=[\
            {text:"隨機獲得一個效果",color:"gray",italic:false}\
        ]\
    ]
execute if score *random_effect deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with potion[\
        custom_data={ui:1b},\
        tooltip_display={hidden_components:[potion_contents]},\
        enchantment_glint_override=true,\
        custom_name={text:"隨機效果：開啟",color:green,italic:false},\
        lore=[\
            {text:"隨機獲得一個效果",color:"gray",italic:false}\
        ]\
    ]

execute if score *random_effect deathswap.setting matches 1 run \
    item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.21 with written_book[\
        custom_data={ui:1b},\
        custom_name={text:"設定-隨機效果",color:yellow,italic:false}\
    ]