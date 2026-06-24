#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_103.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_103 - arena setting page

#if arena disabled -> back to 100
execute if score *arena deathswap.setting matches 0 run function deathswap:ui/inventory/page_change {goto_page:100}

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
#reset arena setting
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.arena.default",slot:"inventory.26",\
    item:"nautilus_shell",count:1,\
    command:"function deathswap:setting/arena/default",\
    name_en:{text:"Reset Arena Setting",color:yellow,italic:false},\
    name_zhtw:{text:"重設競技場設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#arena.start
function deathswap:ui/inventory/item_type/score {\
    id:"setting.arena.start",slot:"inventory.12",\
    item:"ender_pearl",count_use_score:"true",\
    toggle:"true",\
    score_name:"*arena.start",score_objectives:"deathswap.setting",\
    command:"function none",\
    unit_en:" rounds of swap",unit_zhtw:"回合後",\
    name_disabled_en:{"text":"Arena Start: Start Directly",color:yellow,italic:false},\
    name_disabled_zhtw:{"text":"競技場開始：直接開始",color:yellow,italic:false},\
    name_en:[{text:"Arena Start: After ",color:yellow,italic:false}],\
    name_zhtw:[{text:"競技場開始：交換",color:yellow,italic:false}],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#+5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.arena.start.add5",slot:"inventory.3",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/arena/start_add {add:5}",\
    name_en:{text:"+5 Round",color:green,italic:false},\
    name_zhtw:{text:"+5 回合",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowUp},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#-5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.arena.start.minus5",slot:"inventory.21",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/arena/start_minus {minus:5}",\
    name_en:{text:"-5 Round",color:red,italic:false},\
    name_zhtw:{text:"-5 回合",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowDown},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 

#arena.border
function deathswap:ui/inventory/item_type/score {\
    id:"setting.arena.border",slot:"inventory.13",\
    item:"structure_void",count_use_score:"false",\
    toggle:"false",\
    score_name:"*arena.border",score_objectives:"deathswap.setting",\
    command:"function none",\
    unit_en:"",unit_zhtw:"",\
    name_disabled_en:{},\
    name_disabled_zhtw:{},\
    name_en:[{text:"Arena Border: ",color:yellow,italic:false}],\
    name_zhtw:[{text:"競技場邊界：",color:yellow,italic:false}],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#+100
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.arena.border.add5",slot:"inventory.4",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/arena/border_add {add:100}",\
    name_en:{text:"+100 Border",color:green,italic:false},\
    name_zhtw:{text:"+100 邊界",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowUp},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#-100
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.arena.border.minus5",slot:"inventory.22",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/arena/border_minus {minus:100}",\
    name_en:{text:"-100 Border",color:red,italic:false},\
    name_zhtw:{text:"-100 邊界",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowDown},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 

#arena.shrink
function deathswap:ui/inventory/item_type/list {\
    id:"setting.arena.shrink",slot:"inventory.14",\
    item_list:["lead","lead"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*arena.shrink",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/arena/shrink",\
    name_list_en:[\
        {text:"Arena Shrinks: Disabled",color:red,italic:false},\
        {text:"Arena Shrinks: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"競技場縮圈：關閉",color:red,italic:false},\
        {text:"競技場縮圈：開啟",color:green,italic:false},\
    ],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}

#---
#placeholder
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.0"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.1"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.2"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.3"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.4"}
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
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}