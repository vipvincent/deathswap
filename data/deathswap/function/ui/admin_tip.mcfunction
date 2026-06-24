#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/admin_tip.mcfunction
#
#Made by vipvincent
#-----

#get admin tip - for notadmin
execute if score *language deathswap.setting matches 1 run tellraw @s[tag=!admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"To access the settings menu, admin privileges\n are required. "},\
    {\
        text:"[Click here to obtain admin]",color:"blue",\
        click_event:{\
            action: run_command,command: "/tag @s add admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/tag @s add admin",color:light_purple},{text:" [OP]",color:red }\
            ]\
        }\
    }\
]
execute if score *language deathswap.setting matches 2 run tellraw @s[tag=!admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"如要進入設定介面，需要管理員權限。"},\
    {\
        text:"[點此取得管理員權限]",color:"blue",\
        click_event:{\
            action: run_command,command: "/tag @s add admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/tag @s add admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]

#setting menu tip - for admin
execute if score *language deathswap.setting matches 1 run tellraw @s[tag=admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Please open your inventory to configure the settings. "},\
    {\
        text:"[To remove admin privileges, please click here.]",color:"red",\
        click_event:{\
            action: run_command,command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"Click here or type command",color:yellow},"\n",\
                {text:"/tag @s remove admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]
execute if score *language deathswap.setting matches 2 run tellraw @s[tag=admin] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"請打開物品欄以進行設定。"},\
    {\
        text:"[如要移除管理員權限，請點此]",color:"red",\
        click_event:{\
            action: run_command,command: "/tag @s remove admin" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"點此或輸入以下指令",color:yellow},"\n",\
                {text:"/tag @s remove admin",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]