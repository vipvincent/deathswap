#ui/click_admin
function deathswap:ui/page/update

tellraw @s ""

#en
execute if score *language deathswap.setting matches 1 run tellraw @s[tag=!admin] [\
    {\
        text: "[You are not Admin. If Server OP, click here to obtain Admin.]",\
        color: aqua,\
        click_event: {\
            action: run_command,\
            command: "/tag @s add admin" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command",\
                    color:yellow \
                },\
                "\n",\
                {\
                    text:"/tag @s add admin",\
                    color:light_purple \
                },\
                {\
                    text:" [OP]",\
                    color:red \
                }\
            ]\
        }\
    }\
]
execute if score *language deathswap.setting matches 1 run tellraw @s[tag=admin] [\
    {\
        text: "[You are admin. Click here to remove admin.]",\
        color: red,\
        click_event: {\
            action: run_command,\
            command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"Click here or type command",\
                    color:yellow \
                },\
                "\n",\
                {\
                    text:"/tag @s remove admin",\
                    color:light_purple \
                },\
                {\
                    text:" [OP]",\
                    color:red \
                }\
            ]\
        }\
    }\
]

#---
#中文
execute if score *language deathswap.setting matches 2 run tellraw @s[tag=!admin] [\
    {\
        text: "[你還不是管理員。如果你是伺服器OP，點擊此處獲得管理員權限。]",\
        color: aqua,\
        click_event: {\
            action: run_command,\
            command: "/tag @s add admin" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"點此或輸入以下指令",\
                    color:yellow \
                },\
                "\n",\
                {\
                    text:"/tag @s add admin",\
                    color:light_purple \
                },\
                {\
                    text:" [OP]",\
                    color:red \
                }\
            ]\
        }\
    }\
]
execute if score *language deathswap.setting matches 2 run tellraw @s[tag=admin] [\
    {\
        text: "[你已經是管理員。點擊此處移除你的管理員權限。]",\
        color: red,\
        click_event: {\
            action: run_command,\
            command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action: show_text,\
            value: [\
                {\
                    text:"點此或輸入以下指令",\
                    color:yellow \
                },\
                "\n",\
                {\
                    text:"/tag @s remove admin",\
                    color:light_purple \
                },\
                {\
                    text:" [OP]",\
                    color:red \
                }\
            ]\
        }\
    }\
]

tellraw @s ""

execute as @s at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
