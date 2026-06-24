#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/dialog/get_admin.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#sound
execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

#en
execute if score *language deathswap.setting matches 1 run dialog show @s {\
    "type":"multi_action",\
    "pause":false,\
    "title":{"text":"Admin privileges"},\
    "body": [\
        {\
            "type":"plain_message",\
            "width":500,\
            "contents":{text:"The settings menu requires admin privileges.",color:"yellow"}\
        },\
        {\
            "type":"plain_message",\
            "width":500,\
            "contents":"Please click the button below to obtain admin privileges.\n(Only for players with OP)" \
        }\
    ],\
    "columns": 1,\
    "actions":[\
        {\
            "width": 200,\
            "label": {"text":"Click here to obtain admin privileges"},\
            "tooltip": {"text":"Only for players with OP"},\
            "action": {"type":"run_command","command":"/tag @s add admin"}\
        }\
    ]\
}

#zhtw
execute if score *language deathswap.setting matches 2 run dialog show @s {\
    "type":"multi_action",\
    "pause":false,\
    "title":{"text":"管理員權限"},\
    "body": [\
        {\
            "type":"plain_message",\
            "contents":{text:"設定介面需要管理員權限",color:"yellow"}\
        },\
        {\
            "type":"plain_message",\
            "contents":"請點擊以下按鈕以獲得管理員權限\n(僅限具有OP權限的玩家)" \
        }\
    ],\
    "columns": 1,\
    "actions":[\
        {\
            "width": 200,\
            "label": {"text":"點此獲得管理員權限"},\
            "tooltip": {"text":"僅限具有OP權限的玩家"},\
            "action": {"type":"run_command","command":"/tag @s add admin"}\
        }\
    ]\
}