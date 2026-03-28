#tick

#return
execute unless data storage deathswap:storage_main {install:1b} run return fail
execute if data storage deathswap:storage_main {install_stage:1b} run return fail

#join_game (leave_game)
execute as @a unless score @s deathswap.leave_game matches 0 run function deathswap:lib/join_game
scoreboard players set @a deathswap.leave_game 0

#admin
execute as @a[tag=admin,tag=notadmin] run function deathswap:lib/admin
execute if score *game deathswap.status matches 0 as @a[gamemode=creative,tag=notadmin] run function deathswap:lib/admin
execute as @a[tag=!notadmin,tag=!admin] run function deathswap:lib/notadmin
tag @a[gamemode=!creative,tag=!admin,tag=creative] remove creative

# game status
# 0 prepare 
# 1 wait 
# 2 play 
# 3 win 
execute if score *game deathswap.status matches 0 run function deathswap:prepare/prepare_time
execute if score *game deathswap.status matches 1 run function deathswap:wait/wait_time
execute if score *game deathswap.status matches 2 run function deathswap:play/play_time
execute if score *game deathswap.status matches 3 run function deathswap:end/end_time
scoreboard players reset @a deathswap.death

#hp_adj
function deathswap:lib/hp_adj

#count
function deathswap:lib/count

#trigger
function deathswap:lib/trigger

#actionbar
function deathswap:ui/actionbar/main

#display sidebar
function #deathswap:ui/sidebar

#team_name
function deathswap:team/team_name

#adv
function deathswap:advancement/root

#lobby
execute as @e[type=marker,tag=lobby] at @s run setworldspawn ~ ~ ~
kill @e[tag=setlobby]
function deathswap:ui/text_display
function deathswap:ui/particle_circle

#win score
execute as @a unless score @s deathswap.win_score matches 1.. run scoreboard players set @s deathswap.win_score 0
execute if score *language deathswap.setting matches 1 run scoreboard objectives modify deathswap.win_score displayname {text:"Win Score",color:yellow}
execute if score *language deathswap.setting matches 2 run scoreboard objectives modify deathswap.win_score displayname {text:"獲勝分數",color:yellow}

#play_count
execute unless score *play_count deathswap.status matches 1.. run scoreboard players set *play_count deathswap.status 0

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
