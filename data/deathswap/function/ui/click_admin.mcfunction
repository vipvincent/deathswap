tellraw @s ""

#en
execute if score language deathswap.setting matches 1 run tellraw @s[tag=!admin] [{"text": "§b[OP can click here to obtain admin rights, or switch to creative]","clickEvent": {"action": "run_command","value": "/tag @s add admin"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/tag @s add admin §c[OP players]"}}]
execute if score language deathswap.setting matches 1 run tellraw @s[tag=admin] [{"text": "§c[You already have admin rights, click here to remove yours]","clickEvent": {"action": "run_command","value": "/tag @s remove admin"},"hoverEvent": {"action": "show_text","contents": "§eClick here or type command\n§d/tag @s remove admin §c[OP players]"}}]
#中文
execute if score language deathswap.setting matches 2 run tellraw @s[tag=!admin] [{"text": "§b[如果你是OP玩家，點擊此處即可獲得管理員權限，也可切換到創造模式來獲得]","clickEvent": {"action": "run_command","value": "/tag @s add admin"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/tag @s add admin §c[OP 玩家]"}}]
execute if score language deathswap.setting matches 2 run tellraw @s[tag=admin] [{"text": "§c[你已經擁有管理員權限，點擊此處即可移除自己的管理員權限]","clickEvent": {"action": "run_command","value": "/tag @s remove admin"},"hoverEvent": {"action": "show_text","contents": "§e點此或輸入以下指令\n§d/tag @s remove admin §c[OP 玩家]"}}]

tellraw @s ""

function deathswap:ui/page/update