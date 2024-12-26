#not install
execute unless data storage deathswap:status {install:1b} run return run tellraw @a [{"text": "§6Death Swap 死亡交換","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.0"},{"text": "§r\n- "},\
{"text": "§f[Install 安裝] ","clickEvent": {"action": "run_command","value": "/function deathswap:install"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:install §c[OP players OP 玩家]"}}\
]

#install - no set lang
execute if data storage deathswap:status {install_stage:1b} run return run tellraw @a [{"text": "§6Death Swap 死亡交換","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.0"},{"text": "§r\n- "},\
{"text":"","color":"yellow","clickEvent": {"action": "run_command","value": "/trigger deathswap set 10"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command 點此或輸入以下指令\n§d/trigger deathswap set 10 §a[Admin rights 管理員權限]\n§d/function deathswap:ui/language §c[OP players OP 玩家]"},"extra": [{"text": "[🌏 "},{"translate": "narrator.button.language"},{"text": "] "}]},\
{"text": "§d[Reinstall 重新安裝] ","clickEvent": {"action": "run_command","value": "/function deathswap:reinstall"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP players OP 玩家]"}},\
{"text": "§4[Uninstall 解除安裝] ","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command 點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP players OP 玩家]"}}\
]

#install - en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.0"},{"text": "§r\n- "},\
{"text": "§b[Reset Game] ","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/trigger deathswap set 5 §a[Admin rights]\n§d/function deathswap:reset §c[OP players]"}},\
{"text":"","color":"yellow","clickEvent": {"action": "run_command","value": "/trigger deathswap set 10"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/trigger deathswap set 10 §a[Admin rights]\n§d/function deathswap:ui/language §c[OP players]"},"extra": [{"text": "[🌏 "},{"translate": "narrator.button.language"},{"text": "] "}]},\
{"text": "§d[Reinstall] ","clickEvent": {"action": "run_command","value": "/function deathswap:reinstall"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/function deathswap:reinstall §c[OP players]"}},\
{"text": "§4[Uninstall] ","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/function deathswap:uninstall §c[OP players]"}}\
]

#install - en
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}},{"text": " §ev3.0"},{"text": "§r\n- "},\
{"text": "§b[重製遊戲] ","clickEvent": {"action": "run_command","value": "/trigger deathswap set 5"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/trigger deathswap set 5 §a[管理員權限]\n§d/function deathswap:reset §c[OP 玩家]"}},\
{"text":"","color":"yellow","clickEvent": {"action": "run_command","value": "/trigger deathswap set 10"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/trigger deathswap set 10 §a[管理員權限]\n§d/function deathswap:ui/language §c[OP 玩家]"},"extra": [{"text": "[🌏 "},{"translate": "narrator.button.language"},{"text": "] "}]},\
{"text": "§d[重新安裝] ","clickEvent": {"action": "run_command","value": "/function deathswap:reinstall"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/function deathswap:reinstall §c[OP 玩家]"}},\
{"text": "§4[解除安裝] ","clickEvent": {"action": "run_command","value": "/function deathswap:uninstall"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/function deathswap:uninstall §c[OP 玩家]"}}\
]