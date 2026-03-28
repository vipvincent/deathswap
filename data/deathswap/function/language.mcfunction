#return/not install
execute unless data storage deathswap:storage_main {install:1b} run tellraw @s [\
    {\
        text: "Death Swap is not installed yet! 尚未安裝死亡交換！",color:red \
    },\
    {\
        text: "[Install 安裝] ",color: white,\
        click_event: {\
            action:run_command,command: "/function deathswap:install" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command 點此或輸入以下指令",color:yellow \
                },\
                "\n",\
                {\
                    text:"/function deathswap:install",color:light_purple \
                },\
                {\
                    text:" [OP]",color:red \
                }\
            ]\
        }\
    }\
]
execute unless data storage deathswap:storage_main {install:1b} at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless data storage deathswap:storage_main {install:1b} run return fail

#language list
# 1 English
# 2 繁體中文

#title
tellraw @s {text: "",extra: [">>>>> 🌏 ",{translate:"narrator.button.language"}," <<<<<"],color: yellow}

#for install_stage tip
execute if data storage deathswap:storage_main {install_stage:1b} run tellraw @s {text: "⚠ Now is the installation stage, only OP can operate it.",color: gray}
execute if data storage deathswap:storage_main {install_stage:1b} run tellraw @s {text: "⚠ 現在為安裝階段，只有OP才可操作。",color: gray }

tellraw @s ""

#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} run tellraw @s [\
    {\
        text: "[English] ",color: red,\
        click_event: {\
            action: run_command,command: "/function deathswap:setting/language/en" \
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "Set Language to English",color: gold,bold: true},"\n",\
                {text: "Click here or type command",color: yellow},"\n",\
                {text: "/function deathswap:setting/language/en",color: light_purple},{text: " [OP]",color: red }\
            ]\
        }\
    },\
    {\
        text: "[繁體中文] ",color: "aqua",\
        click_event: {\
            action: run_command,command: "/function deathswap:setting/language/tw" \
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "將語言設定為繁體中文",color: gold,bold: true},"\n",\
                {text: "點此或輸入以下指令",color: yellow},"\n",\
                {text: "/function deathswap:setting/language/tw",color: light_purple},{text: " [OP]",color: red}\
            ]\
        }\
    }\
]

#---
#install/notadmin
execute unless data storage deathswap:storage_main {install_stage:1b} run tellraw @s[tag=notadmin] [\
    {\
        text: "[English] ",color: red,\
        click_event: {\
            action: run_command,command: "/function deathswap:setting/language/en"\
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "Set Language to English",color: gold,bold: true},"\n",\
                {text: "Click here or type command",color: yellow},"\n",\
                {text: "/function deathswap:setting/language/en",color: light_purple},{text: " [OP]",color: red}\
            ]\
        }\
    },\
    {\
        text: "[繁體中文] ",color: "aqua",\
        click_event: {\
            action: run_command,command: "/function deathswap:setting/language/tw"\
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "將語言設定為繁體中文",color: gold,bold: true},"\n",\
                {text: "點此或輸入以下指令",color: yellow},"\n",\
                {text: "/function deathswap:setting/language/tw",color: light_purple},{text: " [OP]",color: red}\
            ]\
        }\
    }\
]

#---
#install/admin
execute unless data storage deathswap:storage_main {install_stage:1b} run tellraw @s[tag=admin] [\
    {\
        text: "[English] ",color: red,\
        click_event: {\
            action: run_command,command: "/trigger deathswap set 11"\
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "Set Language to English",color: gold,bold: true},"\n",\
                {text: "Click here or type command",color: yellow},"\n",\
                {text: "/trigger deathswap set 11",color: light_purple},{text: " [Admin]",color: green},"\n",\
                {text: "/function deathswap:setting/language/en",color: light_purple},{text: " [OP]",color: red }\
            ]\
        }\
    },\
    {\
        text: "[繁體中文] ",color: "aqua",\
        click_event: {\
            action: run_command,command: "/trigger deathswap set 12"\
        },\
        hover_event: {\
            action: show_text,value: [\
                "",\
                {text: "將語言設定為繁體中文",color: gold,bold: true},"\n",\
                {text: "點此或輸入以下指令",color: yellow},"\n",\
                {text: "/trigger deathswap set 12",color: light_purple},{text: " [管理員]",color: green},"\n",\
                {text: "/function deathswap:setting/language/tw",color: light_purple},{text: " [OP]",color: red}\
            ]\
        }\
    }\
]

tellraw @s ""

#language Warning
tellraw @s {text: "",extra: ["(",{translate: "options.languageWarning"},")"],color: gray,}

tellraw @s ""

execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

function deathswap:ui/page/update