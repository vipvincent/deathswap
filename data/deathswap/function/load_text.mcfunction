#load_text

#load_version
data modify storage deathswap:storage_main load_version set value "v3.6"

#not install
execute unless data storage deathswap:storage_main {install:1b} run tellraw @a [\
    {\
        text: "Death Swap 死亡交換 ",color:gold,\
        click_event: {\
            "action": "open_url","url": "https://modrinth.com/project/irff3j1Z" \
        },\
        hover_event:{\
            action:"show_text",value: [\
                "Click here to ",{text:"Modrinth",color:green },"\n",\
                "點擊此處前往 ",{text:"Modrinth",color:green },\
            ]\
        }\
    },\
    {storage:"deathswap:storage_main",nbt:"load_version",interpret:true,color:yellow}\
]
execute unless data storage deathswap:storage_main {install:1b} run tellraw @a [\
    "- ",\
    {\
        text: "[Install 安裝] ",\
        click_event: {\
            action:run_command,command: "/function deathswap:install" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow },"\n",\
                {text:"/function deathswap:install",color:light_purple },{text:" [OP]",color:red }\
            ]\
        }\
    },\
    {\
        text: "[Installation Guide 安裝指南] ",color:yellow,\
        click_event: {\
            action:"open_url",url: "https://vipvincent.github.io/deathswap/install" \
        },\
        hover_event: {\
            action: show_text,value: [\
                "Click here to ",{text:"Installation Guide",color:yellow },"\n",\
                "點擊此處前往",{text:"安裝指南",color:yellow },\
            ]\
        }\
    }\
]

#---
#install_stage
execute if data storage deathswap:storage_main {install_stage:1b} run tellraw @a [\
    {\
        text: "Death Swap 死亡交換 ",color:gold,\
        click_event: {\
            "action": "open_url","url": "https://modrinth.com/project/irff3j1Z" \
        },\
        hover_event:{\
            action:"show_text",value: [\
                "Click here to ",{text:"Modrinth",color:green },"\n",\
                "點擊此處前往 ",{text:"Modrinth",color:green },\
            ]\
        }\
    },\
    {storage:"deathswap:storage_main",nbt:"load_version",interpret:true,color:yellow}\
]
execute if data storage deathswap:storage_main {install_stage:1b} run tellraw @a [\
    "- ",\  
    {\
        text: "",extra: ["[",{translate: "narrator.button.language"},"] "],color:yellow,\
        click_event: {\
            action: run_command,command: "/function deathswap:language" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red }\
            ]\
        }\
    },\
    {\
        text: "[Reinstall 重新安裝] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:reinstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Uninstall 解除安裝] ",color:red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow },"\n",\
                {text:"/function deathswap:uninstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]

#---
#install/en
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {\
        text: "Death Swap ",color:gold,\
        click_event: {\
            "action": "open_url","url": "https://modrinth.com/project/irff3j1Z" \
        },\
        hover_event:{\
            action:"show_text",value: [\
                "Click here to ",{text:"Modrinth",color:green }\
            ]\
        }\
    },\
    {storage:"deathswap:storage_main",nbt:"load_version",interpret:true,color:yellow}\
]
#install/en/notadmin
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=notadmin] [\
    "- ",\
    {\
        text: "[Obtain Admin] ",color: "aqua",\
        click_event:{\
            action: run_command,command: "/tag @s add admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/tag @s add admin",color:light_purple},{text:" [OP]",color:red }\
            ]\
        }\
    },\
    {\
        text: "[Reset Game] ",color: blue,\
        click_event: {\
            action: run_command,command: "/function deathswap:reset" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "",extra: ["[",{translate: "narrator.button.language"},"] "],color:yellow,\
        click_event: {\
            action: run_command,command: "/function deathswap:language" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Reinstall] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/function deathswap:reinstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Uninstall] ",color:red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/function deathswap:uninstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]
#install/en/admin
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=admin] [\
    "- ",\
    {\
        text: "[Remove Admin] ",color: "red",\
        click_event:{\
            action: run_command,command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/tag @s remove admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Reset Game] ",color: blue,\
        click_event: {\
            action: run_command,command: "/trigger reset" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/trigger reset",color:light_purple},{text:" [Admin]",color:green},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "",extra: ["[",{translate: "narrator.button.language"},"] "],color:yellow,\
        click_event: {\
            action: run_command,command: "/trigger deathswap set 10" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/trigger deathswap set 10",color:light_purple},{text:" [Admin 管理員]",color:green},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Reinstall] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/function deathswap:reinstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[Uninstall] ",color:red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/function deathswap:uninstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]

#---
#install/tw
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {\
        text: "死亡交換 ",color:gold,\
        click_event: {\
            "action": "open_url","url": "https://modrinth.com/datapack/deathswap" \
        },\
        hover_event:{\
            action:"show_text",value: [\
                "點擊此處前往 ",{text:"Modrinth",color:green},\
            ]\
        }\
    },\
    {storage:"deathswap:storage_main",nbt:"load_version",interpret:true,color:yellow}\
]
#install/tw/notadmin
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=notadmin] [\
    "- ",\
    {\
        text: "[獲得管理員] ",color: "aqua",\
        click_event:{\
            action: run_command,command: "/tag @s add admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/tag @s add admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[重製遊戲] ",color: blue,\
        click_event: {\
            action: run_command,command: "/function deathswap:reset" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "",extra: ["[",{translate: "narrator.button.language"},"] "],color:yellow,\
        click_event: {\
            action: run_command,command: "/function deathswap:language" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[重新安裝] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:reinstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[解除安裝] ",color:red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:uninstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]
#install/tw/admin
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=admin] [\
    "- ",\
    {\
        text: "[移除管理員] ",color: "red",\
        click_event:{\
            action: run_command,command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/tag @s remove admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[重製遊戲] ",color: blue,\
        click_event: {\
            action: run_command,command: "/trigger reset" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/trigger reset",color:light_purple},{text:" [管理員]",color:green},"\n",\
                {text:"/function deathswap:reset",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "",extra: ["[",{translate: "narrator.button.language"},"] "],color:yellow,\
        click_event: {\
            action: run_command,command: "/trigger deathswap set 10" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/trigger deathswap set 10",color:light_purple},{text:" [Admin 管理員]",color:green},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[重新安裝] ",color:light_purple,\
        click_event: {\
            action: run_command,command: "/function deathswap:reinstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:reinstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    },\
    {\
        text: "[解除安裝] ",color:red,\
        click_event: {\
            action: run_command,command: "/function deathswap:uninstall" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:uninstall",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]

#clear load_version
data remove storage deathswap:storage_main load_version