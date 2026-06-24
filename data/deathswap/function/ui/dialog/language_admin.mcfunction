#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/dialog/language_admin.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

dialog show @s {\
    "type":"multi_action",\
    "pause":false,\
    "title": {"translate":"narrator.button.language","color":"yellow"},\
    "body":[\
        {\
            "type":"plain_message",\
            "contents": "Please select your language.\n請選擇你的語言。"\
        },\
        {\
            "type":"plain_message",\
            "contents": {translate:"options.languageAccuracyWarning",color:"gray"}\
        }\
    ],\
    "columns": 1,\
    "actions":[\
        {\
            "width": 200,\
            "label": {"text":"English","color": "red"},\
            "tooltip": {"text":"Click here to set the language to English"},\
            "action": {"type":"run_command","command":"/trigger deathswap set 11"}\
        },\
        {\
            "width": 200,\
            "label": {"text":"繁體中文","color": "aqua"},\
            "tooltip": {"text":"點此設定語言為繁體中文"},\
            "action": {"type":"run_command","command":"/trigger deathswap set 12"}\
        }\
    ]\
}