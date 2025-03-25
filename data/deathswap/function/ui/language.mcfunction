#1 english
#2 中文

tellraw @s [{"text": "§e>>>>> 🌏 "},{"translate":"narrator.button.language","color":"yellow"},{"text": "§e <<<<<"}]
execute if data storage deathswap:status {install_stage:1b} run tellraw @s {"text": "§7⚠ Now is the installation stage, only OP players can operate it."}
execute if data storage deathswap:status {install_stage:1b} run tellraw @s {"text": "§7⚠ 現在為安裝階段，只有OP玩家才可操作。"}
tellraw @s ""

#install_stage
execute if data storage deathswap:status {install_stage:1b} run tellraw @s [\
{"text": "§c[English] ","click_event": {"action": "run_command","command": "/function deathswap:setting/language/en"},"hover_event": {"action": "show_text","value": "§6§lSet language to English\n§eClick here or type command\n§d/function deathswap:setting/language/en §c[OP players]"}},\
{"text": "§b[中文]","click_event": {"action": "run_command","command": "/function deathswap:setting/language/tw"},"hover_event": {"action": "show_text","value": "§6§l將語言設定為中文\n§e點此或輸入以下指令\n§d/function deathswap:setting/language/tw §c[OP 玩家]"}}\
]

#install/notadmin
execute unless data storage deathswap:status {install_stage:1b} run tellraw @s[tag=notadmin] [\
{"text": "§c[English] ","click_event": {"action": "run_command","command": "/function deathswap:setting/language/en"},"hover_event": {"action": "show_text","value": "§6§lSet language to English\n§eClick here or type command\n§d/function deathswap:setting/language/en §c[OP players]\n§d/trigger deathswap set 11 §a[Admin]"}},\
{"text": "§b[中文]","click_event": {"action": "run_command","command": "/function deathswap:setting/language/tw"},"hover_event": {"action": "show_text","value": "§6§l將語言設定為中文\n§e點此或輸入以下指令\n§d/function deathswap:setting/language/tw §c[OP 玩家]\n§d/trigger deathswap set 12 §a[管理員權限]"}}\
]

#install/admin
execute unless data storage deathswap:status {install_stage:1b} run tellraw @s[tag=admin] [\
{"text": "§c[English] ","click_event": {"action": "run_command","command": "/trigger deathswap set 11"},"hover_event": {"action": "show_text","value": "§6§lSet language to English\n§eClick here or type command\n§d/trigger deathswap set 11 §a[Admin]\n§d/function deathswap:setting/language/en §c[OP players]"}},\
{"text": "§b[中文]","click_event": {"action": "run_command","command": "/trigger deathswap set 12"},"hover_event": {"action": "show_text","value": "§6§l將語言設定為中文\n§e點此或輸入以下指令\n§d/trigger deathswap set 12 §a[管理員權限]\n§d/function deathswap:setting/language/tw §c[OP 玩家]"}}\
]

tellraw @s ""
tellraw @s [{"text": "§7("},{"translate":"options.languageWarning","color":"gray"},{"text": "§7)"}]
tellraw @s ""

execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

function deathswap:ui/page/update