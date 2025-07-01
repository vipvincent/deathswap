#load_text
#not install
execute unless data storage deathswap:status {install:1b} run tellraw @a [{"text": "§6Death Swap 死亡交換","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.3"}]
execute unless data storage deathswap:status {install:1b} run tellraw @a [{"text": "§r- "},\
{"text": "§f[Install 安裝] ","click_event": {"action": "run_command","command": "/function deathswap:install"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:install §c[OP players OP 玩家]"}}\
]

#install_stage
execute if data storage deathswap:status {install_stage:1b} run tellraw @a [{"text": "§6Death Swap 死亡交換","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.3"}]
execute if data storage deathswap:status {install_stage:1b} run tellraw @a [{"text": "§r- "},\
[{"text": "","color":"yellow","click_event": {"action": "run_command","command": "/function deathswap:ui/language"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:ui/language \n§c[OP players OP 玩家]"}},{"text": "["},{"translate": "narrator.button.language"},{"text": "] "}],\
{"text": "§d[Reinstall 重新安裝] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:reinstall \n§c[OP players OP 玩家]"}},\
{"text": "§4[Uninstall 解除安裝] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:uninstall \n§c[OP players OP 玩家]"}}\
]

#install/en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.3"}]
#install/en/notadmin
execute if score language deathswap.setting matches 1 run tellraw @a[tag=notadmin] [{"text": "§r- "},\
{"text": "§b[Obtain admin] ","click_event":{"action": "run_command","command": "/tag @s add admin"},"hover_event": {"action":"show_text","value": "§eClick here or type command\n§d/tag @s add admin §c[OP players]"}},\
{"text": "§9[Reset Game] ","click_event": {"action": "run_command","command": "/function deathswap:reset"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:reset §c[OP players]\n§d/trigger deathswap set 5 §a[Admin]"}},\
[{"text": "","color":"yellow","click_event": {"action": "run_command","command": "/function deathswap:ui/language"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:ui/language \n§c[OP players OP 玩家]\n§d/trigger deathswap set 10 \n§a[Admin 管理員權限]"}},{"text": "["},{"translate": "narrator.button.language"},{"text": "] "}],\
{"text": "§d[Reinstall] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:reinstall §c[OP players]"}},\
{"text": "§4[Uninstall] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:uninstall §c[OP players]"}}\
]
#install/en/admin
execute if score language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§r- "},\
{"text": "§c[Remove admin] ","click_event":{"action": "run_command","command": "/tag @s remove admin"},"hover_event": {"action":"show_text","value": "§eClick here or type command\n§d/tag @s remove admin §c[OP players]"}},\
{"text": "§9[Reset Game] ","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/trigger deathswap set 5 §a[Admin]\n§d/function deathswap:reset §c[OP players]"}},\
[{"text": "","color":"yellow","click_event": {"action": "run_command","command": "/trigger deathswap set 10"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/trigger deathswap set 10 \n§a[Admin 管理員權限]\n§d/function deathswap:ui/language \n§c[OP players OP 玩家]"}},{"text": "["},{"translate": "narrator.button.language"},{"text": "] "}],\
{"text": "§d[Reinstall] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:reinstall §c[OP players]"}},\
{"text": "§4[Uninstall] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/function deathswap:uninstall §c[OP players]"}}\
]

#install/tw
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.3"}]
#install/tw/notadmin
execute if score language deathswap.setting matches 2 run tellraw @a[tag=notadmin] [{"text": "§r- "},\
{"text": "§b[獲得管理員] ","click_event":{"action": "run_command","command": "/tag @s add admin"},"hover_event": {"action":"show_text","value": "§e點此或輸入以下指令\n§d/tag @s add admin §c[OP 玩家]"}},\
{"text": "§9[重製遊戲] ","click_event": {"action": "run_command","command": "/function deathswap:reset"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:reset §c[OP 玩家]\n§d/trigger deathswap set 5 §a[管理員權限]"}},\
[{"text": "","color":"yellow","click_event": {"action": "run_command","command": "/function deathswap:ui/language"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:ui/language \n§c[OP players OP 玩家]\n§d/trigger deathswap set 10 \n§a[Admin 管理員權限]"}},{"text": "["},{"translate": "narrator.button.language"},{"text": "] "}],\
{"text": "§d[重新安裝] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP 玩家]"}},\
{"text": "§4[解除安裝] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP 玩家]"}}\
]
#install/tw/admin
execute if score language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§r- "},\
{"text": "§c[移除管理員] ","click_event":{"action": "run_command","command": "/tag @s remove admin"},"hover_event": {"action":"show_text","value": "§e點此或輸入以下指令\n§d/tag @s remove admin §c[OP 玩家]"}},\
{"text": "§9[重製遊戲] ","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/trigger deathswap set 5 §a[管理員權限]\n§d/function deathswap:reset §c[OP 玩家]"}},\
[{"text": "","color":"yellow","click_event": {"action": "run_command","command": "/trigger deathswap set 10"},"hover_event": {"action": "show_text","value": "§eClick here or type command 點此或輸入以下指令\n§d/trigger deathswap set 10 \n§a[Admin 管理員權限]\n§d/function deathswap:ui/language §c[OP players OP 玩家]"}},{"text": "["},{"translate": "narrator.button.language"},{"text": "] "}],\
{"text": "§d[重新安裝] ","click_event": {"action": "run_command","command": "/function deathswap:reinstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP 玩家]"}},\
{"text": "§4[解除安裝] ","click_event": {"action": "run_command","command": "/function deathswap:uninstall"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP 玩家]"}}\
]