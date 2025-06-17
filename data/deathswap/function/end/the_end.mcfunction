# win status
# 0 all fail
# 1 red team
# 2 blue team
# 3 yellow team
# 4 green team
# 5 killer 

scoreboard players set end deathswap.timer 0
scoreboard players set game deathswap.status 3

#bpssbar
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:arena visible false
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false

#score
scoreboard players add @a[tag=win] deathswap.win_score 1
scoreboard players add @a[tag=win,tag=player] deathswap.win_score 1
scoreboard players add @a[tag=win,tag=player,tag=killer] deathswap.win_score 1
scoreboard objectives setdisplay sidebar deathswap.win_score

#sound & pqrticle
execute as @a[tag=win] at @s run playsound ui.toast.challenge_complete master @s ^ ^ ^ 1 1 1
execute as @a[tag=win] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.25 40 force

#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame over! Thanks for playing!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §fMade by §bvipvincent"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲結束！感謝你的遊玩！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f是由§b早安豆江 vipvincent§f製作"}]

#statistics
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fPlay time of this game: "},{"score":{"name": "play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§ds"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTotal Swap Round: "},{"score":{"name": "swap_count","objective": "deathswap.count"},"color": "light_purple"}]


execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f本次遊玩時間："},{"score":{"name": "play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§d秒"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f總共交換回合："},{"score":{"name": "swap_count","objective": "deathswap.count"},"color": "light_purple"}]

#killer
execute if entity @a[tag=killer] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fKiller: "},{"selector":"@a[tag=killer]","color": "dark_red"}]
execute if entity @a[tag=killer] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手："},{"selector":"@a[tag=killer]","color": "dark_red"}]

#reset
execute if score language deathswap.setting matches 1 run tellraw @a[tag=!admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§7The game will reset in 15s!"}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=!admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§7遊戲將在15秒後重製遊戲！"}]

execute if score language deathswap.setting matches 1 run tellraw @a[tag=admin] [{"text": "§6Death Swap§7 | §r"},{"text": "§7The game will reset in 15s! "},\
{"text": "§b[Reset Game]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§eClick here or type command\n§d/trigger deathswap set 5 §a[Admin]\n§d/function deathswap:reset §c[OP players]"}}\
]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=admin] [{"text": "§6死亡交換§7 | §r"},{"text": "§7遊戲將在15秒後重製遊戲！"},\
{"text": "§b[重製遊戲]","click_event": {"action": "run_command","command": "/trigger deathswap set 5"},"hover_event": {"action": "show_text","value": "§e點此或輸入以下指令\n§d/trigger deathswap set 5 §a[管理員權限]\n§d/function deathswap:reset §c[OP 玩家]"}}\
]
