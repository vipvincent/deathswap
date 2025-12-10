function deathswap:play/swap/swap_time

#still_off
execute as @a run function deathswap:lib/still/off

#time&weather_cycle
execute if score *time_cycle deathswap.setting matches 0 run gamerule minecraft:advance_time true
execute if score *time_cycle deathswap.setting matches 1 run gamerule minecraft:advance_time false

execute if score *weather_cycle deathswap.setting matches 0 run gamerule minecraft:advance_weather true
execute if score *weather_cycle deathswap.setting matches 1 run gamerule minecraft:advance_weather false

#friendlyfire
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify red friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify blue friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify yellow friendlyFire true
execute if score *team_friendlyfire deathswap.setting matches 0 run team modify green friendlyFire true

execute if score *team_friendlyfire deathswap.setting matches 1 run team modify red friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify blue friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify yellow friendlyFire false
execute if score *team_friendlyfire deathswap.setting matches 1 run team modify green friendlyFire false

#collisionrule
team modify solo collisionRule always
execute if score *team_collisionrule deathswap.setting matches 0 run team modify red collisionRule always
execute if score *team_collisionrule deathswap.setting matches 0 run team modify blue collisionRule always
execute if score *team_collisionrule deathswap.setting matches 0 run team modify yellow collisionRule always
execute if score *team_collisionrule deathswap.setting matches 0 run team modify green collisionRule always

execute if score *team_collisionrule deathswap.setting matches 1 run team modify red collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 1 run team modify blue collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 1 run team modify yellow collisionRule pushOwnTeam
execute if score *team_collisionrule deathswap.setting matches 1 run team modify green collisionRule pushOwnTeam

gamerule minecraft:max_entity_cramming 24

#bossbar 
bossbar set deathswap:wait visible false
bossbar set deathswap:swap_countdown visible true
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 if score *arena.shrink deathswap.setting matches 0 run bossbar set deathswap:arena visible true
execute if score *gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true
execute if score *random_effect deathswap.setting matches 1 run bossbar set deathswap:random_effect visible true

#reset death
scoreboard players reset @a deathswap.death

#update play_count_update
scoreboard players operation *play_count_update deathswap.status = *player_count deathswap.status

#status
scoreboard players set *game deathswap.status 2

#play_count
scoreboard players add *play_count deathswap.status 1

#title
execute if score *language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score *language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§aGame Started!"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§a遊戲開始！"}

#text
#start
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=!admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Started!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=!admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲開始！"}]

execute if score *language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Started! "},\
{"text": "§b[Reset Game]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/trigger deathswap set 5 §a[Admin]\n§d/function deathswap:reset §c[OP players]"}}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲開始！"},\
{"text": "§b[重製遊戲]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/trigger deathswap set 5 §a[管理員權限]\n§d/function deathswap:reset §c[OP 玩家]"}}\
]

#/tm
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fYou can use /tm to chat with teammates","click_event": {"action": "suggest_command","command": "/tm "},"hover_event": {"action": "show_text","value": "/tm <message>"}}]
execute if score *mode deathswap.setting matches 2 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f你可以使用 /tm 與隊友聊天","click_event": {"action": "suggest_command","command": "/tm "},"hover_event": {"action": "show_text","value": "/tm <訊息>"}}]

#inventory_limit
execute if score *inventory_limit deathswap.setting matches ..36 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d§lNote: §r§fDo not put items into locked inventory!"}]
execute if score *inventory_limit deathswap.setting matches ..36 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d§l注意：§r§f請勿將物品放入已鎖定的物品欄！"}]

execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~

#arena
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 run scoreboard players set *arena deathswap.status 2
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 run execute store result score *arena.border deathswap.status run scoreboard players get *arena.border deathswap.setting
execute if score *arena deathswap.setting matches 1 if score *arena.start deathswap.setting matches 0 run execute if score *arena.shrink deathswap.setting matches 0 run function deathswap:play/arena/shrink_wait

#random_effect
execute if score *random_effect deathswap.setting matches 1 run function deathswap:play/random_effect/random