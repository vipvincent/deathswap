#--------------------------------------------------
#Death Swap
#data/deathswap/function/load.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#install
execute unless data storage vipvincent:install_manager {deathswap:{install:1b}} run return run tellraw @a [\
    ["",{text: "Death Swap",color:gold},{text:" > ",color:gold}],\
    {\
        text:"[Click here to install Death Swap 點此以安裝死亡交換]",\
        click_event: {\
            action: run_command,command: "/function deathswap:install" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:install",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]

#update
execute unless data storage vipvincent:install_manager {deathswap:{install_version:"v3.7"}} run return run function deathswap:update

#langauge
execute unless score *language deathswap.setting matches 1.. run function deathswap:ui/language_tip

#reload
function #deathswap:ui/update