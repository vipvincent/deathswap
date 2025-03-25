tellraw @s ""

#en
execute if score language deathswap.setting matches 1 run tellraw @s[tag=!admin] [{"text": "§b[OP can click here to obtain admin, or switch to creative]","click_event": {"action": "run_command","command": "/tag @s add admin"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/tag @s add admin §c[OP players]"}}]
execute if score language deathswap.setting matches 1 run tellraw @s[tag=admin] [{"text": "§c[You already have admin, click here to remove yours]","click_event": {"action": "run_command","command": "/tag @s remove admin"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/tag @s remove admin §c[OP players]"}}]
#中文
execute if score language deathswap.setting matches 2 run tellraw @s[tag=!admin] [{"text": "§b[如果你是OP玩家，點擊此處即可獲得管理員權限，也可切換到創造模式來獲得]","click_event": {"action": "run_command","command": "/tag @s add admin"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/tag @s add admin §c[OP 玩家]"}}]
execute if score language deathswap.setting matches 2 run tellraw @s[tag=admin] [{"text": "§c[你已經擁有管理員權限，點擊此處即可移除自己的管理員權限]","click_event": {"action": "run_command","command": "/tag @s remove admin"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/tag @s remove admin §c[OP 玩家]"}}]

tellraw @s ""

function deathswap:ui/page/update