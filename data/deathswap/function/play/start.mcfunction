function deathswap:play/swap/swap_time

#attribute
execute as @a[tag=player] run attribute @s minecraft:jump_strength base set 0.41999998688697815
execute as @a[tag=player] run attribute @s minecraft:movement_speed base set 0.10000000149011612
execute as @a[tag=player] run attribute @s minecraft:block_interaction_range base set 4.5
execute as @a[tag=player] run attribute @s minecraft:entity_interaction_range base set 3.0

#collisionrule
execute if score team_collisionrule deathswap.setting matches 0 run team modify red collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify blue collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify yellow collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify green collisionRule always

execute if score team_collisionrule deathswap.setting matches 1 run team modify red collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify blue collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify yellow collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify green collisionRule pushOwnTeam

gamerule maxEntityCramming 24

#bossbar 
execute if score arena deathswap.setting matches 1 if score arena.start deathswap.setting matches 0 if score arena.shrink deathswap.setting matches 0 run bossbar set deathswap:arena visible true
bossbar set deathswap:swap_countdown visible true
execute if score gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
bossbar set deathswap:wait visible false

scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death
execute as @a run scoreboard players operation @s deathswap.hurt = @s deathswap.health

#status
scoreboard players set game deathswap.status 2

#play_count
scoreboard players add play_count deathswap.count 1

#text
#start
execute if score language deathswap.setting matches 1 run tellraw @a[tag=!admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame started!"}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=!admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲開始！"}]

execute if score language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame started! "},\
{"text": "§b[Reset Game]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/trigger deathswap set 5 §a[Admin]\n§d/function deathswap:reset §c[OP players]"}}\
]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲開始！"},\
{"text": "§b[重製遊戲]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/trigger deathswap set 5 §a[管理員權限]\n§d/function deathswap:reset §c[OP 玩家]"}}\
]

#/tm
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fYou can use /tm to chat with teammates","click_event": {"action": "suggest_command","command": "/tm "},"hover_event": {"action": "show_text","value": "/tm <message>"}}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f你可以使用 /tm 與隊友聊天","click_event": {"action": "suggest_command","command": "/tm "},"hover_event": {"action": "show_text","value": "/tm <訊息>"}}]

#inventory_limit
execute if score inventory_limit deathswap.setting matches ..36 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d§lNote: §r§fDo not put items into locked inventory!"}]
execute if score inventory_limit deathswap.setting matches ..36 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d§l注意：§r§f請勿將物品放入已鎖定的物品欄！"}]

execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~

function deathswap:play/inventory_limit
function deathswap:wait/give_item

#arena
execute if score arena deathswap.setting matches 1 if score arena.start deathswap.setting matches 0 run scoreboard players set arena deathswap.status 2
execute if score arena deathswap.setting matches 1 if score arena.start deathswap.setting matches 0 run execute store result score arena.border deathswap.status run scoreboard players get arena.border deathswap.setting
execute if score arena deathswap.setting matches 1 if score arena.start deathswap.setting matches 0 run execute if score arena.shrink deathswap.setting matches 0 run function deathswap:play/arena/shrink_wait
