#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_102.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_102 - killer setting page

#if killer disabled -> all 102 back to 100
execute if score *killer deathswap.setting matches 0 run function deathswap:ui/inventory/page_change {goto_page:100}

#back
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.special_gameplay",slot:"inventory.8",\
    item:"barrier",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:100}",\
    name_en:{text:"Back",color:red,italic:false},\
    name_zhtw:{text:"返回",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#reset killer setting
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.killer.default",slot:"inventory.26",\
    item:"nautilus_shell",count:1,\
    command:"function deathswap:setting/killer/default",\
    name_en:{text:"Reset Killer Mode Setting",color:yellow,italic:false},\
    name_zhtw:{text:"重設殺手模式設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#killer.eliminated_alert
function deathswap:ui/inventory/item_type/list {\
    id:"setting.killer.eliminated_alert",slot:"inventory.12",\
    item_list:["paper","paper"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*killer.eliminated_alert",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/killer/eliminated_alert",\
    name_list_en:[\
        {text:"Killer Eliminated Alert: Disabled",color:red,italic:false},\
        {text:"Killer Eliminated Alert: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"殺手淘汰提示：關閉",color:red,italic:false},\
        {text:"殺手淘汰提示：開啟",color:green,italic:false},\
    ],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}

#killer.quantity
function deathswap:ui/inventory/item_type/list {\
    id:"setting.killer.quantity",slot:"inventory.13",\
    item_list:["player_head","player_head"],\
    count_list:[1,4],\
    toggle:"false",\
    score_name:"*killer.quantity",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/killer/quantity",\
    name_list_en:[\
        {text:"Number of Killers: Only one",color:yellow,italic:false},\
        {text:"Number of Killers: One per team",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"殺手數量：僅一個",color:yellow,italic:false},\
        {text:"殺手數量：每隊一個",color:yellow,italic:false},\
    ],\
    lore_en:[{text:"The winning conditions for each killer are independent and not a team.",color:gray,italic:false}],\
    lore_zhtw:[{text:"每位殺手的獲勝條件都是各自獨立的，並非組隊",color:gray,italic:false}],\
    components:"",\
}

#killer.weapon
function deathswap:ui/inventory/item_type/list {\
    id:"setting.killer.weapon",slot:"inventory.14",\
    item_list:[\
        "wooden_sword",\
        "wooden_sword",\
        "stone_sword",\
        "copper_sword",\
        "iron_sword",\
        "golden_sword",\
        "diamond_sword",\
        "netherite_sword",\
    ],\
    count_list:[1,1,1,1,1,1,1,1],\
    toggle:"true",\
    score_name:"*killer.weapon",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/killer/weapon",\
    name_list_en:[\
        {text:"Killer Weapon: None",color:red,italic:false},\
        {text:"Killer Weapon: Wooden Sword",color:green,italic:false},\
        {text:"Killer Weapon: Stone Sword",color:green,italic:false},\
        {text:"Killer Weapon: Copper Sword",color:green,italic:false},\
        {text:"Killer Weapon: Iron Sword",color:green,italic:false},\
        {text:"Killer Weapon: Golden Sword",color:green,italic:false},\
        {text:"Killer Weapon: Diamond Sword",color:green,italic:false},\
        {text:"Killer Weapon: Netherite Sword",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"殺手武器：無",color:red,italic:false},\
        {text:"殺手武器：木劍",color:green,italic:false},\
        {text:"殺手武器：石劍",color:green,italic:false},\
        {text:"殺手武器：銅劍",color:green,italic:false},\
        {text:"殺手武器：鐵劍",color:green,italic:false},\
        {text:"殺手武器：金劍",color:green,italic:false},\
        {text:"殺手武器：鑽劍",color:green,italic:false},\
        {text:"殺手武器：獄劍",color:green,italic:false},\
    ],\
    lore_en:[{text:"Killer's starting weapon",color:gray,italic:false}],\
    lore_zhtw:[{text:"殺手的起始武器",color:gray,italic:false}],\
    components:"",\
}

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
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.11"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.13"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}