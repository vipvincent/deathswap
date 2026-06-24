#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_101.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_101 - gmchange setting page

#if gmchange disabled -> all 101 back to 100
execute if score *gmchange deathswap.setting matches 0 run function deathswap:ui/inventory/page_change {goto_page:100}

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
#reset gmchange setting
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.default",slot:"inventory.26",\
    item:"nautilus_shell",count:1,\
    command:"function deathswap:setting/gmchange/default",\
    name_en:{text:"Reset Game Mode Auto Switch Setting",color:yellow,italic:false},\
    name_zhtw:{text:"重設遊戲模式自動切換設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

## gmchange.survival_time
function deathswap:ui/inventory/item_type/score {\
    id:"setting.gmchange.survival_time",slot:"inventory.13",\
    item:"iron_sword",count_use_score:"true",\
    toggle:"false",\
    score_name:"*gmchange.survival_time",score_objectives:"deathswap.setting",\
    command:"function none",\
    unit_en:"s",unit_zhtw:"秒",\
    name_disabled_en:{},\
    name_disabled_zhtw:{},\
    name_en:[{text:"Survial Time: ",color:yellow,italic:false}],\
    name_zhtw:[{text:"生存模式時長：",color:yellow,italic:false}],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#-5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.survival_time.minus5",slot:"inventory.11",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/survival_minus {minus:5}",\
    name_en:{text:"-5s",color:red,italic:false},\
    name_zhtw:{text:"-5秒",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowLeft},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#-1
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.survival_time.minus1",slot:"inventory.12",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/survival_minus {minus:1}",\
    name_en:{text:"-1s",color:red,italic:false},\
    name_zhtw:{text:"-1秒",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowLeft},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#+1
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.survival_time.add1",slot:"inventory.14",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/survival_add {add:1}",\
    name_en:{text:"+1s",color:green,italic:false},\
    name_zhtw:{text:"+1秒",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowRight},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#+5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.survival_time.add5",slot:"inventory.15",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/survival_add {add:5}",\
    name_en:{text:"+5s",color:green,italic:false},\
    name_zhtw:{text:"+5秒",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowRight},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 

## gmchange.creative_time
function deathswap:ui/inventory/item_type/score {\
    id:"setting.gmchange.creative_time",slot:"inventory.22",\
    item:"grass_block",count_use_score:"true",\
    toggle:"false",\
    score_name:"*gmchange.creative_time",score_objectives:"deathswap.setting",\
    command:"function none",\
    unit_en:"s",unit_zhtw:"秒",\
    name_disabled_en:{},\
    name_disabled_zhtw:{},\
    name_en:[{text:"Creative Time: ",color:yellow,italic:false}],\
    name_zhtw:[{text:"創造模式時長：",color:yellow,italic:false}],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#-5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.creative_time.minus5",slot:"inventory.20",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/creative_minus {minus:5}",\
    name_en:{text:"-5s",color:red,italic:false},\
    name_zhtw:{text:"-5秒",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowLeft},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#-1
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.creative_time.minus1",slot:"inventory.21",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/creative_minus {minus:1}",\
    name_en:{text:"-1s",color:red,italic:false},\
    name_zhtw:{text:"-1秒",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowLeft},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#+1
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.creative_time.add1",slot:"inventory.23",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/creative_add {add:1}",\
    name_en:{text:"+1s",color:green,italic:false},\
    name_zhtw:{text:"+1秒",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowRight},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#+5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.gmchange.creative_time.add5",slot:"inventory.24",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/gmchange/creative_add {add:5}",\
    name_en:{text:"+5s",color:green,italic:false},\
    name_zhtw:{text:"+5秒",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowRight},\
        tooltip_display={hidden_components:[profile]},\
    ",\
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
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.11"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.13"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}