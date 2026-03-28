#load

#install tip
execute unless data storage deathswap:storage_main {install:1b} run return run tellraw @a [\
    "",\
    {\
        text:"Tip: ",color:gold,bold:true \
    },\
    {\
        text: "[Click here to install Death Swap 點擊此處安裝死亡交換]",\
        click_event: {\
            action:run_command,command:"/function deathswap:install" \
        },\
        hover_event: {\
            action:show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow },"\n",\
                {text:"/function deathswap:install",color:light_purple },{text:" [OP]",color:red }\
            ]\
        }\
    }\
]

#install_stage language
execute unless score *language deathswap.setting matches 1.. as @a[scores={deathswap.leave_game=1}] run return run function deathswap:language

#update
execute unless data storage deathswap:storage_main {install_version:"v3.6"} run return run function deathswap:update

#ui
function deathswap:ui/page/update