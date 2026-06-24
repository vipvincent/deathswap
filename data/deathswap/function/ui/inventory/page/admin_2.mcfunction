#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_2.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_2 - team page

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

#mode
function deathswap:ui/inventory/item_type/list {\
    id:"setting.mode",slot:"inventory.22",\
    item_list:["player_head","player_head"],\
    count_list:[1,4],\
    toggle:"false",\
    score_name:"*mode",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/mode",\
    name_list_en:[\
        {text:"Solo Battle",color:yellow,italic:false},\
        {text:"Team Battle",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"個人戰模式",color:yellow,italic:false},\
        {text:"隊伍戰模式",color:yellow,italic:false},\
    ],\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#all_join_solo
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"all_join_solo",slot:"inventory.13",\
    item:"nether_star",count:1,\
    command:"function deathswap:team/all_join_solo",\
    name_en:{text:"Add all players to Game Team",color:yellow,italic:false},\
    name_zhtw:{text:"將所有玩家加入遊戲隊伍",color:yellow,italic:false},\
    lore_en:[{text:"Add all non-spectator players to Game Team",color:gray,italic:false}],\
    lore_zhtw:[{text:"將非旁觀者的所有玩家加入遊戲隊伍",color:gray,italic:false}],\
    components:"",\
}
#random_team
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"random_team_2",slot:"inventory.12",\
    item:"magenta_glazed_terracotta",count:2,\
    command:"function deathswap:team/random/main {random:2}",\
    name_en:{text:"Randomly divided into Two Teams",color:yellow,italic:false},\
    name_zhtw:{text:"隨機分為兩隊",color:yellow,italic:false},\
    lore_en:[{text:"Randomly divide non-spectator players into two teams",color:gray,italic:false}],\
    lore_zhtw:[{text:"將非旁觀者的所有玩家隨機分為兩隊",color:gray,italic:false}],\
    components:"",\
}
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"random_team_3",slot:"inventory.13",\
    item:"magenta_glazed_terracotta",count:3,\
    command:"function deathswap:team/random/main {random:3}",\
    name_en:{text:"Randomly divided into Three Teams",color:yellow,italic:false},\
    name_zhtw:{text:"隨機分為三隊",color:yellow,italic:false},\
    lore_en:[{text:"Randomly divide non-spectator players into three teams",color:gray,italic:false}],\
    lore_zhtw:[{text:"將非旁觀者的所有玩家隨機分為三隊",color:gray,italic:false}],\
    components:"",\
}
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/normal {\
    id:"random_team_4",slot:"inventory.14",\
    item:"magenta_glazed_terracotta",count:4,\
    command:"function deathswap:team/random/main {random:4}",\
    name_en:{text:"Randomly divided into Four Teams",color:yellow,italic:false},\
    name_zhtw:{text:"隨機分為四隊",color:yellow,italic:false},\
    lore_en:[{text:"Randomly divide non-spectator players into four teams",color:gray,italic:false}],\
    lore_zhtw:[{text:"將非旁觀者的所有玩家隨機分為四隊",color:gray,italic:false}],\
    components:"",\
}

#solo mode air
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}

#team_choose
function deathswap:ui/inventory/item_type/list {\
    id:"setting.team_choose",slot:"inventory.23",\
    item_list:["slime_ball","slime_ball"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*team_choose",score_objectives:"deathswap.setting",\
    command:"function deathswap:team/team_choose",\
    name_list_en:[\
        {text:"Team Selection: Disabled",color:red,italic:false},\
        {text:"Team Selection: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"自由選隊：關閉",color:red,italic:false},\
        {text:"自由選隊：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Enabled this will allow players to choose their own teams",color:gray,italic:false}],\
    lore_zhtw:[{text:"開啟此功能才能讓玩家自己選擇隊伍",color:gray,italic:false}],\
    components:"",\
}
#reset_team
function deathswap:ui/inventory/item_type/normal {\
    id:"reset_team",slot:"inventory.24",\
    item:"redstone_torch",count:1,\
    command:"function deathswap:team/reset_team",\
    name_en:{text:"Reset Team",color:yellow,italic:false},\
    name_zhtw:{text:"重製隊伍",color:yellow,italic:false},\
    lore_en:[{text:"Remove All Players from the team",color:gray,italic:false}],\
    lore_zhtw:[{text:"將所有玩家移出隊伍",color:gray,italic:false}],\
    components:"",\
}

#team_collisionrule
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"error.solo",slot:"inventory.20",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/not_support_solo",\
    name_en:{text:"Solo Battle does not support this setting!",color:red,italic:false},\
    name_zhtw:{text:"個人戰不支援此設定",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/list {\
    id:"setting.team_collisionrule",slot:"inventory.20",\
    item_list:["lead","lead"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*team_collisionrule",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/team_collisionrule",\
    name_list_en:[\
        {text:"Team Collision: Disabled",color:red,italic:false},\
        {text:"Team Collision: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"隊伍推擠：關閉",color:red,italic:false},\
        {text:"隊伍推擠：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the same team pushes each other",color:gray,italic:false}],\
    lore_zhtw:[{text:"相同隊伍是否要互相推擠",color:gray,italic:false}],\
    components:"",\
}
#team friendlyFire
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"error.solo",slot:"inventory.21",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/not_support_solo",\
    name_en:{text:"Solo Battle does not support this setting!",color:red,italic:false},\
    name_zhtw:{text:"個人戰不支援此設定",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/list {\
    id:"setting.team_friendlyfire",slot:"inventory.21",\
    item_list:["pufferfish","pufferfish"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*team_friendlyfire",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/team_friendlyfire",\
    name_list_en:[\
        {text:"Team Friendly Fire: Disabled",color:red,italic:false},\
        {text:"Team Friendly Fire: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"同隊互傷：關閉",color:red,italic:false},\
        {text:"同隊互傷：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the same team hurts each other",color:gray,italic:false}],\
    lore_zhtw:[{text:"相同隊伍是否要互相傷害",color:gray,italic:false}],\
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
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}
