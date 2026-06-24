#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_100.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_100 - special gameplay page

#back
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.home",slot:"inventory.8",\
    item:"barrier",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:0}",\
    name_en:{text:"Back",color:red,italic:false},\
    name_zhtw:{text:"返回",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}

#gmchange
function deathswap:ui/inventory/item_type/list {\
    id:"setting.gmchange.switch",slot:"inventory.11",\
    item_list:["feather","feather"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*gmchange",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/gmchange/switch",\
    name_list_en:[\
        {text:"Game Mode Auto Switch: Disabled",color:red,italic:false},\
        {text:"Game Mode Auto Switch: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"遊戲模式自動切換：關閉",color:red,italic:false},\
        {text:"遊戲模式自動切換：開啟",color:green,italic:false},\
    ],\
    lore_en:[\
        {text:"Set time to automatically switch game modes",color:"gray",italic:false},\
        {text:"(Note: It is recommended to restrict certain items,",color:"gray",italic:false},\
        {text:" such as Totem of Undying, Enchanted/Golden Apple,",color:"gray",italic:false},\
        {text:" Potion, and Suspicious Stew.)",color:"gray",italic:false},\
    ],\
    lore_zhtw:[\
        {text:"在設定的時間自動切換遊戲模式",color:"gray",italic:false},\
        {text:"(註：建議自行限制物品，如：不死圖騰、",color:"gray",italic:false},\
        {text:" 附魔/金蘋果、藥水、可疑的燉湯)",color:"gray",italic:false},\
    ],\
    components:"",\
}
execute if score *gmchange deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.gmchange_setting",slot:"inventory.20",\
    item:"written_book",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:101}",\
    name_en:{text:"Setting - Game Mode Auto Switch",color:yellow,italic:false},\
    name_zhtw:{text:"設定 - 遊戲模式自動切換",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"enchantment_glint_override=true",\
}

#killer
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"error.solo",slot:"inventory.12",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/not_support_solo",\
    name_en:{text:"Solo Battle does not support this setting!",color:red,italic:false},\
    name_zhtw:{text:"個人戰不支援此設定",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/list {\
    id:"setting.killer.switch",slot:"inventory.12",\
    item_list:["iron_sword","iron_sword"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*killer",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/killer/switch",\
    name_list_en:[\
        {text:"Killer Mode: Disabled",color:red,italic:false},\
        {text:"Killer Mode: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"殺手模式：關閉",color:red,italic:false},\
        {text:"殺手模式：開啟",color:green,italic:false},\
    ],\
    lore_en:[\
        {text:"Killers hide within teams",color:"gray",italic:false},\
        {text:"and are hostile to each other.",color:"gray",italic:false},\
        {text:"Kill all other players and survive to win.",color:"gray",italic:false},\
        {text:"Act in secret and stop teams from winning.",color:"gray",italic:false},\
        {text:"(Team wins do not grant victory)",color:"gray",italic:false},\
        {text:"(2+ players per team advised)",color:"gray",italic:false},\
    ],\
    lore_zhtw:[\
        {text:"殺手潛伏於隊伍中，彼此互為敵對。",color:"gray",italic:false},\
        {text:"目標為擊殺所有其他玩家，僅有自身存活時才算獲勝。",color:"gray",italic:false},\
        {text:"殺手必須暗中行動，避免暴露身分，",color:"gray",italic:false},\
        {text:"並阻止任何隊伍取得勝利。",color:"gray",italic:false},\
        {text:"(隊伍勝利不計為殺手勝利)",color:"gray",italic:false},\
        {text:"(建議每隊至少2人以上，以確保遊戲體驗。)",color:"gray",italic:false},\
    ],\
    components:"",\
}
execute if score *mode deathswap.setting matches 1 if score *killer deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.killer_setting",slot:"inventory.21",\
    item:"written_book",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:102}",\
    name_en:{text:"Setting - Killer Mode",color:yellow,italic:false},\
    name_zhtw:{text:"設定 - 殺手模式",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"enchantment_glint_override=true",\
}

#arena
function deathswap:ui/inventory/item_type/list {\
    id:"setting.arena.switch",slot:"inventory.13",\
    item_list:["redstone","redstone"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*arena",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/arena/switch",\
    name_list_en:[\
        {text:"Arena: Disabled",color:red,italic:false},\
        {text:"Arena: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"競技場：關閉",color:red,italic:false},\
        {text:"競技場：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"The arena will begin after a few rounds of gameplay",color:"gray",italic:false}],\
    lore_zhtw:[{text:"競技場將在遊玩幾回合後開始",color:"gray",italic:false}],\
    components:"",\
}
execute if score *arena deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.arena_setting",slot:"inventory.22",\
    item:"written_book",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:103}",\
    name_en:{text:"Setting - Arena Mode",color:yellow,italic:false},\
    name_zhtw:{text:"設定 - 競技場",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"enchantment_glint_override=true",\
}

#random_effect
function deathswap:ui/inventory/item_type/list {\
    id:"setting.random_effect.switch",slot:"inventory.14",\
    item_list:["potion","potion"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*random_effect",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/random_effect/switch",\
    name_list_en:[\
        {text:"Random Effect: Disabled",color:red,italic:false},\
        {text:"Random Effect: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"隨機效果：關閉",color:red,italic:false},\
        {text:"隨機效果：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Get an effect randomly",color:"gray",italic:false}],\
    lore_zhtw:[{text:"隨機獲得一個效果",color:"gray",italic:false}],\
    components:"",\
}
execute if score *random_effect deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.random_effect_setting",slot:"inventory.23",\
    item:"written_book",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:104}",\
    name_en:{text:"Setting - Random Effect",color:yellow,italic:false},\
    name_zhtw:{text:"設定 - 隨機效果",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"enchantment_glint_override=true",\
}

#---
#setting placeholder
execute if score *gmchange deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
execute if score *mode deathswap.setting matches 1 if score *killer deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
execute if score *arena deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
execute if score *random_effect deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}

#---
#placeholder
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.0"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.1"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.2"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.3"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.4"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.5"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.6"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.7"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.8"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.9"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.10"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.11"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.13"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}
