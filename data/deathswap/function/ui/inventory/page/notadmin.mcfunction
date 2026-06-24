#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/notadmin.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#score calculation
function deathswap:ui/inventory/item_type/normal {\
    id:"show.score_calculation",slot:"inventory.12",\
    item:"ghast_tear",count:1,\
    command:"function deathswap:ui/score_calculation",\
    name_en:{text:"Score Calculation Rules",color:yellow,italic:false},\
    name_zhtw:{text:"分數計算規則",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}

#info
function deathswap:ui/inventory/item_type/normal {\
    id:"show.info",slot:"inventory.13",\
    item:"player_head",count:1,\
    command:"function deathswap:ui/info",\
    name_en:{text:"About Death Swap",color:yellow,italic:false},\
    name_zhtw:{text:"關於死亡交換",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={id:[I;1983474114,-1925689616,-1271176063,-244653484]},\
        tooltip_display={hidden_components:[profile]} \
    ",\
}

#get_admin_tip
function deathswap:ui/inventory/item_type/normal {\
    id:"show.get_admin_tip",slot:"inventory.14",\
    item:"command_block",count:1,\
    command:"function deathswap:ui/dialog/get_admin",\
    name_en:{text:"Setting Menu?",color:yellow,italic:false},\
    name_zhtw:{text:"設定介面？",color:yellow,italic:false},\
    lore_en:[\
        {text:"Accessing the setting menu requires admin privileges",color:gray,italic:false},\
        {text:"Click here to obtain admin privileges",color:gray,italic:false}\
    ],\
    lore_zhtw:[\
        {text:"進入設定介面需要管理員權限",color:gray,italic:false},\
        {text:"點此取得管理員權限",color:gray,italic:false}\
    ],\
    components:"",\
}

#---
#clean
function deathswap:ui/inventory/item_type/clean {slot:"inventory.0"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.1"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.2"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.3"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.4"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.5"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.6"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.7"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.8"}

function deathswap:ui/inventory/item_type/clean {slot:"inventory.9"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.10"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.11"}
#function deathswap:ui/inventory/item_type/clean {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/clean {slot:"inventory.13"}
#function deathswap:ui/inventory/item_type/clean {slot:"inventory.14"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/clean {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.19"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.20"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.21"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.25"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.26"}

function deathswap:ui/inventory/item_type/clean {slot:"hotbar.0"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.1"}
#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.2"}
#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.3"}
#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.4"}
#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.5"}
#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.6"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.7"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.8"}
