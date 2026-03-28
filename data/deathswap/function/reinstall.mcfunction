#reinstall

#return
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

#reinstall main
tellraw @a "-----------------------------------------------------"
execute unless score *language deathswap.setting matches 2.. run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fReinstalling §6Death Swap§f..."}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f正在重新安裝§6死亡交換§f..."}]

#data for reinstall
data modify storage deathswap:storage_main reinstall_stage set value 1b
execute if score *language deathswap.setting matches 1 run data modify storage deathswap:storage_main reinstall_lang set value "en"
execute if score *language deathswap.setting matches 2 run data modify storage deathswap:storage_main reinstall_lang set value "tw"

#uninstall&install
function deathswap:uninstall
function deathswap:install

#turn here
#= ui/lanugage
execute if data storage deathswap:storage_main {reinstall_lang:"en"} run scoreboard players set *language deathswap.setting 1
execute if data storage deathswap:storage_main {reinstall_lang:"tw"} run scoreboard players set *language deathswap.setting 2

#clear data for reinstall
data remove storage deathswap:storage_main reinstall_lang
data remove storage deathswap:storage_main reinstall_stage

#language for install
execute if score *language deathswap.setting matches 1.. run function deathswap:install
execute unless score *language deathswap.setting matches 1.. run function deathswap:language