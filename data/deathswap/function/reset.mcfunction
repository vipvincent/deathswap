#--------------------------------------------------
#Death Swap
#data/deathswap/function/reset.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#reset
scoreboard players set *game deathswap.status -1

#worldborder
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:the_nether run worldborder center 0 0
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968 0 
execute in minecraft:the_nether run worldborder set 59999968 0 
execute in minecraft:the_end run worldborder set 59999968 0 

#team/tag
team leave @a[team=!spectator]
tag @a remove player
tag @a remove killer
tag @a remove eliminated
tag @a remove win
tag @a remove spectator

#gamerule
gamerule minecraft:keep_inventory true
gamerule minecraft:reduced_debug_info false
gamerule minecraft:natural_health_regeneration true

gamerule minecraft:advance_time false
gamerule minecraft:advance_weather false

difficulty peaceful

#spawnpoint
execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~

#player
effect clear @a
clear @a
function deathswap:lib/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels

gamerule minecraft:show_death_messages false
kill @a
gamerule minecraft:show_death_messages true

gamemode survival @a 
tp @a @e[tag=lobby,limit=1]
advancement revoke @a everything
recipe take @a *
title @a reset

execute as @a run function deathswap:lib/still/off
function deathswap:lib/waypoint/reset

#kill
kill @e[tag=pos]

#time 
execute if score *time_set deathswap.setting matches 0 run time set day
execute if score *time_set deathswap.setting matches 1 run time set noon
execute if score *time_set deathswap.setting matches 2 run time set night
execute if score *time_set deathswap.setting matches 3 run time set midnight

#weather
execute if score *weather deathswap.setting matches 0 run weather clear
execute if score *weather deathswap.setting matches 1 run weather rain
execute if score *weather deathswap.setting matches 2 run weather thunder

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:arena visible false
bossbar set deathswap:random_effect visible false
bossbar set deathswap:wait visible true
bossbar set deathswap:wait value 400

#team
function deathswap:team/collisionrule/always
function deathswap:team/friendlyfire/true

#---
#data temp clear
data remove storage deathswap:temp end
data remove storage deathswap:temp random_effect

#---
##scoreboard reset
#player
scoreboard players reset * deathswap.death
scoreboard players reset * deathswap.health
scoreboard players reset * deathswap.warped_right_click
scoreboard players reset * deathswap.damage_taken

#timer
scoreboard players set *tick deathswap.timer 0
scoreboard players set *round_time deathswap.timer 0
scoreboard players set *swap_countdown deathswap.timer 0
scoreboard players set *loading deathswap.timer 0
scoreboard players set *end deathswap.timer 0
scoreboard players set *play_time deathswap.timer 0

scoreboard players set *gmchange.time deathswap.timer 0
scoreboard players set *gmchange.pause deathswap.timer -1
scoreboard players set *arena deathswap.timer 0
scoreboard players set *random_effect deathswap.timer 0

#status
scoreboard players set *team_red deathswap.status 0
scoreboard players set *team_blue deathswap.status 0
scoreboard players set *team_green deathswap.status 0
scoreboard players set *team_yellow deathswap.status 0

scoreboard players set *swap_time deathswap.status 0
scoreboard players set *end deathswap.status -1

scoreboard players set *gmchange deathswap.status 0
scoreboard players set *random_effect.effect deathswap.status 0
scoreboard players set *random_effect.time deathswap.status 0
scoreboard players set *arena deathswap.status -1
scoreboard players set *arena.shrink deathswap.status -1
scoreboard players set *arena.border deathswap.status -1

#count
scoreboard players set *solo_count deathswap.status 0
scoreboard players set *red_count deathswap.status 0
scoreboard players set *blue_count deathswap.status 0
scoreboard players set *green_count deathswap.status 0
scoreboard players set *yellow_count deathswap.status 0

scoreboard players set *team_count deathswap.status 0
scoreboard players set *swap_count deathswap.status 0

scoreboard players set *player_count deathswap.status 0
scoreboard players set *player_count_update deathswap.status 0

#swap
scoreboard players reset * deathswap.swap_original
scoreboard players reset * deathswap.swap_calculated

#---
#schedule clear
schedule clear deathswap:play/killer/choose_killer

#---
#game status
scoreboard players set *game deathswap.status 0

#ui page 0
scoreboard players set @a[tag=admin] deathswap.ui_page 0

#scoreboard display
scoreboard objectives setdisplay list deathswap.win_score
scoreboard objectives setdisplay below_name deathswap.win_score
scoreboard objectives setdisplay sidebar deathswap.display.rank

#---
#text
tellraw @a "-----------------------------------------------------"

#text - reset
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Successfully Reset Game!",color:"green"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"遊戲重製完成！",color:"green"}\
]

#text - get_admin_tip
execute as @a run function deathswap:ui/admin_tip

#title
execute if score *language deathswap.setting matches 1 run title @a title {text: "Death Swap",color:"gold"}
execute if score *language deathswap.setting matches 1 run title @a subtitle {text: "Made by vipvincent",color:"aqua"}

execute if score *language deathswap.setting matches 2 run title @a title {text: "死亡交換",color:"gold"}
execute if score *language deathswap.setting matches 2 run title @a subtitle {text: "製作：vipvincent",color:"aqua"}

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
