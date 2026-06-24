#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_0.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_0 - admin Home Page

#setting
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.setting",slot:"inventory.12",\
    item:"trial_key",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:1}",\
    name_en:{text:"Settings",color:yellow,italic:false},\
    name_zhtw:{text:"設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
#team
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.team",slot:"inventory.13",\
    item:"snowball",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:2}",\
    name_en:{text:"Team",color:yellow,italic:false},\
    name_zhtw:{text:"隊伍",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
#special
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.special_gameplay",slot:"inventory.14",\
    item:"ominous_trial_key",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:100}",\
    name_en:{text:"Special Gameplay",color:yellow,italic:false},\
    name_zhtw:{text:"特殊玩法",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#reset win scores
function deathswap:ui/inventory/item_type/normal {\
    id:"reset_wins",slot:"inventory.0",\
    item:"nether_star",count:1,\
    command:"function deathswap:prepare/reset_wins",\
    name_en:{text:"Reset Win Scores",color:yellow,italic:false},\
    name_zhtw:{text:"重製獲勝分數",color:yellow,italic:false},\
    lore_en:[{text:"Clear win scores for all players",color:gray,italic:false}],\
    lore_zhtw:[{text:"清除所有玩家的獲勝分數",color:gray,italic:false}],\
    components:"",\
}
#score calculation
function deathswap:ui/inventory/item_type/normal {\
    id:"show.score_calculation",slot:"inventory.8",\
    item:"ghast_tear",count:1,\
    command:"function deathswap:ui/score_calculation",\
    name_en:{text:"Score Calculation Rules",color:yellow,italic:false},\
    name_zhtw:{text:"分數計算規則",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#language
function deathswap:ui/inventory/item_type/normal {\
    id:"show.language",slot:"inventory.18",\
    item:"player_head",count:1,\
    command:"function deathswap:language",\
    name_en:{translate: "options.language.tooltip",color: "yellow",italic:false},\
    name_zhtw:{translate: "options.language.tooltip",color: "yellow",italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        profile={\
            id:[I;-1121419518,2067529689,-982738485,263170875],\
            properties:[{name:textures,value:\"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19\"}]\
        },\
        tooltip_display={hidden_components:[profile]} \
    ",\
} 
#info
function deathswap:ui/inventory/item_type/normal {\
    id:"show.info",slot:"inventory.26",\
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

#---
#placeholder
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.0"}
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

#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}