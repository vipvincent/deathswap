#--------------------------------------------------
#Death Swap
#data/deathswap/function/uninstall.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless data storage vipvincent:install_manager {deathswap:{install:1b}} run return run function deathswap:lib/return/not_installed

#text
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} run tellraw @a "-----------------------------------------------------"
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} unless score *language deathswap.setting matches 2.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Uninstall "},{text:"Death Swap",color:"gold"},{text:"..."}\
]
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"解除安裝"},{text:"死亡交換",color:"gold"},{text:"..."}\
]
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} run tellraw @a "-----------------------------------------------------"

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#---
#forceload
execute as @e[tag=lobby] at @s run forceload remove ~ ~

#uninstall
time set day
weather clear
clear @a
function deathswap:lib/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
effect clear @a
advancement revoke @a everything
kill @a
kill @e[tag=pos]
kill @e[tag=lobby]
kill @e[tag=lobby_text]

attribute @s minecraft:max_health base set 20
execute as @a run function deathswap:lib/still/off
function deathswap:lib/waypoint/reset

#---
##data clear

#install_manager
data remove storage vipvincent:install_manager deathswap.install
data remove storage vipvincent:install_manager deathswap.install_stage
data remove storage vipvincent:install_manager deathswap.install_version

#ui
data remove storage deathswap:ui text
data remove storage deathswap:ui time

#temp
data remove storage deathswap:temp random_effect

#---
#bossbar
bossbar remove deathswap:swap_countdown
bossbar remove deathswap:wait
bossbar remove deathswap:gmchange
bossbar remove deathswap:arena
bossbar remove deathswap:random_effect

#---
#tag
tag @a remove player
tag @a remove creative
tag @a remove spectator
tag @a remove eliminated
tag @a remove win
tag @a remove admin
tag @a remove notadmin
tag @a remove killer

#---
##scoreboard
#system
scoreboard objectives remove deathswap.status
scoreboard objectives remove deathswap.timer
scoreboard objectives remove deathswap.setting

#swap
scoreboard objectives remove deathswap.swap_original
scoreboard objectives remove deathswap.swap_calculated

#player
scoreboard objectives remove deathswap.death
scoreboard objectives remove deathswap.health
scoreboard objectives remove deathswap.leave_game
scoreboard objectives remove deathswap.warped_right_click
scoreboard objectives remove deathswap.damage_taken
scoreboard objectives remove deathswap.ui_page
scoreboard objectives remove deathswap.win_score

#display_sidebar
scoreboard objectives remove deathswap.display.rank
scoreboard objectives remove deathswap.display.loading
scoreboard objectives remove deathswap.display.play_status

#trigger
scoreboard objectives remove deathswap
scoreboard objectives remove reset

#---
#worldborder
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:the_nether run worldborder center 0 0
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968 0 
execute in minecraft:the_nether run worldborder set 59999968 0 
execute in minecraft:the_end run worldborder set 59999968 0 
worldborder damage buffer 5

#---
#team
team remove red
team remove blue
team remove green
team remove yellow

team remove solo
team remove spectator

#---
#gamerule
gamerule minecraft:keep_inventory false
gamerule minecraft:reduced_debug_info false
gamerule minecraft:immediate_respawn false
gamerule minecraft:natural_health_regeneration true

gamerule minecraft:advance_time true
gamerule minecraft:advance_weather true 

gamerule minecraft:spawn_monsters true
gamerule minecraft:spawner_blocks_work true

gamerule minecraft:show_death_messages true

gamerule minecraft:max_entity_cramming 24
gamerule minecraft:respawn_radius 10

#---
#end
gamemode survival @a