#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_hotbar.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_hotbar - admin hotbar

#switch_to_creative
function deathswap:ui/inventory/item_type/right_click {\
    id:"hotbar.switch_to_creative",slot:"hotbar.0",\
    item:"feather",count:1,\
    command:"gamemode creative",\
    name_en:{"text":"Switch to Creative","color":"yellow","italic":false},\
    name_zhtw:{"text":"切換至創造模式","color":"yellow","italic":false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#tp player here
function deathswap:ui/inventory/item_type/right_click {\
    id:"hotbar.tp_all",slot:"hotbar.1",\
    item:"ender_pearl",count:1,\
    command:"function deathswap:prepare/tp_player_here",\
    command:"function deathswap:prepare/tp_player_here",\
    name_en:{"text":"Teleport All Players to here","color":"yellow","italic":false},\
    name_zhtw:{"text":"傳送所有玩家到這裡","color":"yellow","italic":false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#set_lobby
function deathswap:ui/inventory/item_type/right_click {\
    id:"hotbar.set_lobby",slot:"hotbar.7",\
    item:"lectern",count:1,\
    command:"function deathswap:prepare/set_lobby",\
    name_en:{"text":"Set Game Lobby","color":"yellow","italic":false},\
    name_zhtw:{"text":"設置遊戲大廳","color":"yellow","italic":false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#start_game
function deathswap:ui/inventory/item_type/right_click {\
    id:"hotbar.start_game",slot:"hotbar.8",\
    item:"emerald",count:1,\
    command:"function deathswap:prepare/start_game",\
    name_en:{"text":"Start Game!","color":"green","italic":false},\
    name_zhtw:{"text":"開始遊戲！","color":"green","italic":false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
