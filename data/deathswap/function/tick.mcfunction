#tick

#return
execute unless data storage deathswap:status {install:1b} run return fail
execute if data storage deathswap:status {install_stage:1b} run return fail

#join_game (leave_game)
execute as @a[scores={deathswap.leave_game=1}] run function deathswap:join_game
scoreboard players reset @a deathswap.leave_game

# game status
# -1 reset
#  0 prepare 
#  1 wait 
#  2 play 
#  3 win 
execute if score game deathswap.status matches -1 run gamemode survival @a
execute if score game deathswap.status matches 0 run function deathswap:prepare/prepare_time
execute if score game deathswap.status matches 1 run function deathswap:wait/wait_time
execute if score game deathswap.status matches 2 run function deathswap:play/play_time
execute if score game deathswap.status matches 3 run function deathswap:end/end_time
execute as @a if score @s deathswap.death matches 1 run scoreboard players reset @s deathswap.death

#trigger
function deathswap:trigger

#count
function deathswap:count

#actionbar
function deathswap:ui/actionbar/main

#ui_lick
execute if score game deathswap.status matches 0 run function #deathswap:ui/page/click
scoreboard players set @a deathswap.carrot_right_click 0

#clear ui
execute as @a if items entity @s player.cursor *[custom_data={ui:1b}] run item replace entity @s player.cursor with air
execute as @a if items entity @s player.crafting.0 *[custom_data={ui:1b}] run item replace entity @s player.crafting.0 with air
execute as @a if items entity @s player.crafting.1 *[custom_data={ui:1b}] run item replace entity @s player.crafting.1 with air
execute as @a if items entity @s player.crafting.2 *[custom_data={ui:1b}] run item replace entity @s player.crafting.2 with air
execute as @a if items entity @s player.crafting.3 *[custom_data={ui:1b}] run item replace entity @s player.crafting.3 with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]

execute as @a[tag=admin] unless score @s deathswap.ui_page matches -2147483648..2147483647 run scoreboard players set @s deathswap.ui_page 0
scoreboard players reset @a[tag=notadmin] deathswap.ui_page

#inventory_limit
execute as @a if items entity @s player.cursor *[custom_data={inventory_limit:1b}] run item replace entity @s player.cursor with air
execute as @a if items entity @s player.crafting.0 *[custom_data={inventory_limit:1b}] run item replace entity @s player.crafting.0 with air
execute as @a if items entity @s player.crafting.1 *[custom_data={inventory_limit:1b}] run item replace entity @s player.crafting.1 with air
execute as @a if items entity @s player.crafting.2 *[custom_data={inventory_limit:1b}] run item replace entity @s player.crafting.2 with air
execute as @a if items entity @s player.crafting.3 *[custom_data={inventory_limit:1b}] run item replace entity @s player.crafting.3 with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{inventory_limit:1b}}}}]
kill @e[tag=inventory_limit]

#bossbar players
bossbar set deathswap:wait players @a
execute if score swap_bossbar deathswap.setting matches 0 run bossbar set deathswap:swap_countdown players @a[tag=spectator]
execute if score swap_bossbar deathswap.setting matches 1 run bossbar set deathswap:swap_countdown players @a
bossbar set deathswap:gmchange players @a
bossbar set deathswap:arena players @a
bossbar set deathswap:random_effect players @a

#team
execute if score language deathswap.setting matches 1 run team modify red displayName {"text":"Red Team","color": "red"}
execute if score language deathswap.setting matches 1 run team modify blue displayName {"text":"Blue Team","color": "blue"}
execute if score language deathswap.setting matches 1 run team modify yellow displayName {"text":"Yellow Team","color": "yellow"}
execute if score language deathswap.setting matches 1 run team modify green displayName {"text":"Green Team","color": "green"}
execute if score language deathswap.setting matches 1 run team modify solo displayName {"text":"Game Team","color": "dark_green"}
execute if score language deathswap.setting matches 1 run team modify spectator displayName {"text":"Spectator","color": "gray"}

execute if score language deathswap.setting matches 2 run team modify red displayName {"text":"紅隊","color": "red"}
execute if score language deathswap.setting matches 2 run team modify blue displayName {"text":"藍隊","color": "blue"}
execute if score language deathswap.setting matches 2 run team modify yellow displayName {"text":"黃隊","color": "yellow"}
execute if score language deathswap.setting matches 2 run team modify green displayName {"text":"綠隊","color": "green"}
execute if score language deathswap.setting matches 2 run team modify solo displayName {"text":"遊戲隊伍","color": "dark_green"}
execute if score language deathswap.setting matches 2 run team modify spectator displayName {"text":"旁觀","color": "gray"}

#win score
execute as @a unless score @s deathswap.win_score matches 1.. run scoreboard players set @s deathswap.win_score 0

#win_display
execute if score language deathswap.setting matches 1 run scoreboard objectives modify deathswap.win_score displayname "§6Death Swap §7| §eWin Scores"
execute if score language deathswap.setting matches 2 run scoreboard objectives modify deathswap.win_score displayname "§6死亡交換 §7| §e獲勝分數"
scoreboard players set §7Death_Swap_v3.4 deathswap.win_score -98
scoreboard players set §7Made_by_vipvincent deathswap.win_score -99

#lobby
execute as @e[type=marker,tag=lobby] at @s run spawnpoint @a ~ ~ ~
execute as @e[type=marker,tag=lobby] at @s run setworldspawn ~ ~ ~
kill @e[tag=setlobby]
execute at @e[tag=lobby] run particle end_rod ~ ~0.25 ~
