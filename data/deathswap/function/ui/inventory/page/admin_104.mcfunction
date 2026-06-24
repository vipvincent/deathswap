#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_104.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_104 - random_effect setting page

#if random_effect disabled -> all 104 back to 100
execute if score *random_effect deathswap.setting matches 0 run function deathswap:ui/inventory/page_change {goto_page:100}

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
#reset random_effect setting
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.random_effect.default",slot:"inventory.26",\
    item:"nautilus_shell",count:1,\
    command:"function deathswap:setting/random_effect/default",\
    name_en:{text:"Reset Random Effect Setting",color:yellow,italic:false},\
    name_zhtw:{text:"重設隨機效果設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#random_effect.time
function deathswap:ui/inventory/item_type/score {\
    id:"setting.random_effect.time",slot:"inventory.13",\
    item:"clock",count_use_score:"true",\
    toggle:"false",\
    score_name:"*random_effect.time",score_objectives:"deathswap.setting",\
    command:"function none",\
    unit_en:"s",unit_zhtw:"秒",\
    name_disabled_en:{},\
    name_disabled_zhtw:{},\
    name_en:[{text:"Effect interval: ",color:yellow,italic:false}],\
    name_zhtw:[{text:"效果間隔：",color:yellow,italic:false}],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#+5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.random_effect.time.add5",slot:"inventory.4",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/random_effect/time_add {add:5}",\
    name_en:{text:"+5s",color:green,italic:false},\
    name_zhtw:{text:"+5秒",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowUp},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 
#-5
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.random_effect.time.minus5",slot:"inventory.22",\
    item:"player_head",count:1,\
    command:"function deathswap:setting/random_effect/time_minus {minus:5}",\
    name_en:{text:"-5s",color:red,italic:false},\
    name_zhtw:{text:"-5秒",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={name:MHF_ArrowDown},\
        tooltip_display={hidden_components:[profile]},\
    ",\
} 

#---
#placeholder
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.0"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.1"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.2"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.3"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.4"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.5"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.6"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.7"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.8"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.9"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.10"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.11"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.13"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}