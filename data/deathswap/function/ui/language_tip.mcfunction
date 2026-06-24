#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/lanugauge_tip.mcfunction
#
#Made by vipvincent
#-----

tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {\
        text:"[Please click here to set language 請點此設定語言]",color:"yellow",\
        click_event: {\
            action: run_command,command: "/function deathswap:language" \
        },\
        hover_event: {\
            action: show_text,value: [\
                {text:"Click here or type command 點此或輸入以下指令",color:yellow},"\n",\
                {text:"/function deathswap:language",color:light_purple},{text:" [OP]",color:red}\
            ]\
        }\
    }\
]
